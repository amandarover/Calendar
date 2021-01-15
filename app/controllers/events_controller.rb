class EventsController < ApplicationController
  protect_from_forgery with: :null_session, only: Proc.new { |c| c.request.format.json? }

  def index
    @events = Event.all
  end

  def show
    @event = Event.find params[:id]
  end
end
