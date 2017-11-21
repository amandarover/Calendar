class EventsController < ApplicationController
  protect_from_forgery with: :null_session, only: Proc.new { |c| c.request.format.json? }

  def new
  end

  def create
    @event = Event.new(event_params)
    @event.save!
    redirect_to @event
  end

  private
  def event_params
    params.permit(:name, :date, :hour, :description, :local, :repeating_frequency)
  end
end
