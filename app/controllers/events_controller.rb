class EventsController < ApplicationController
  protect_from_forgery with: :null_session, only: Proc.new { |c| c.request.format.json? }

  def new
  end

  def create
    @event = Event.new(params)
    @event.save
    redirect_to @event
  end
end
