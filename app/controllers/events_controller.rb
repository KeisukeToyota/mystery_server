class EventsController < ApplicationController
  def index
    @events = Event.select(:id, :title)

    render json: @events
  end

  def show
    @event = Event.select(:id, :title, :description).find(params[:id])

    render json: @event
  end
end
