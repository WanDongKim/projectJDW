class ReservationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_reservation

  def index

  end
  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    respond_to do |format|
      if @reservation.save
        format.html { redirect_to (@event.present? ? [@reservation.event, @reservation] : @reservation), notice: 'Reservation was successfully created.' }
        format.json { render :show, status: :created, location: @reservation }
      else
        format.html { render :new }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @ary = Array.new()
    for i in 1..@event.size do
      @ary.push(i)
    end

    @num = params[:num]

  end

  private
  def set_reservation
    @event = Event.find_by(id: params[:event_id]) if params[:event_id].present?
  end

  def reservation_params
    params.require(:reservation).permit(:user_id, :event_id)
  end
end
