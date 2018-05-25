class TransactionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_event

  def new
    gon.client_token = generate_client_token
    @reservation = Reservation.new
  end

  def show
  end

  def create

    @reservation = Reservation.new(:user_id => current_user.id, :event_id => @event.id)

    @amount = @event.price/100
    unless current_user.has_payment_info?
      @result = Braintree::Transaction.sale(
        amount: @amount,
        payment_method_nonce: params[:payment_method_nonce],
        customer: {
          first_name: params[:first_name],
          last_name: params[:last_name],
          company: params[:company],
          email: current_user.email,
          phone: params[:phone]
        },
        options: {
          store_in_vault: true
        }
      )
    else
      @result = Braintree::Transaction.sale(
        amount: @amount,
        payment_method_nonce: params[:payment_method_nonce])
    end

    if @result.success?
      current_user.update(braintree_customer_id: @result.transaction.customer_details.id) unless current_user.has_payment_info?
      respond_to do |format|
        if @reservation.save
          flash[:notice] = "Payment Done Successfully"
          format.html { redirect_to (@event.present? ? [@reservation.event, @reservation] : @reservation), notice: 'Reservation was successfully created.' }
          format.json { render :show, status: :created, location: @reservation }
        else
          flash[:notice] = "Succesfull"
          format.html { render :new }
          format.json { render json: @reservation.errors, status: :unprocessable_entity }
        end
      end
    else
      flash[:alert] = "Something went wrong while processing your transaction. Please try again!"
      gon.client_token = generate_client_token
      render :new
    end
  end




  private
  def generate_client_token
    if current_user.has_payment_info?
      Braintree::ClientToken.generate(customer_id: current_user.braintree_customer_id)
    else
      Braintree::ClientToken.generate
    end
  end

  def set_event
    @event = Event.find_by(id: params[:event_id]) if params[:event_id].present?
  end

  def reservation_params

    params.require(:reservation).permit(current_user.id, @event.id)
  end
end
