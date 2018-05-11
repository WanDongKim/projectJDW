class ReservationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_reservation

  def index
    @ary = Array.new()
    for i in 1..@event.size do
      @ary.push(i)
    end

    @num = params[:num]

  end

  def new
  end

  def create
  end

  private
  def set_reservation
    @event = Event.find_by(id: params[:event_id]) if params[:event_id].present?
  end

end
