class EventsController < ApplicationController
  protect_from_forgery with: :null_session, only: Proc.new { |c| c.request.format.json? }

  def show
    @event = Event.find params[:id]
  end
end
