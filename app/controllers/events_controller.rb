class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
  end

  def create
  end

  def show
    @event = Event.find_by(id: params[:id])
  end
end
