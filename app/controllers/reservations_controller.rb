class ReservationsController < ApplicationController
  before_action :authenticate_user!
  def index
    @event = Event.find_by(id: params[:event_id])

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
end
