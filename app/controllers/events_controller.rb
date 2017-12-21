class EventsController < ApplicationController
  protect_from_forgery with: :null_session, only: Proc.new { |c| c.request.format.json? }

  def index
    @events = Event.all
  end

  def show
    @event = Event.find params[:id]
  end

  def new
  end

  def edit
  end

  def create
    @event = Event.new(event_params)
    @event.save!
    redirect_to @event
  end

  def update
  end

  def destroy
  end

  private
  def event_params
    params.permit(:name, :date, :hour, :description, :local, :repeating_frequency)
  end
end
