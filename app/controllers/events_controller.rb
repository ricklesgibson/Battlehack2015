class EventsController < ApplicationController
  def index
    @event = Event.all
  end

  def new
    @event = Event.new
  end

  def show
    @event = Event.first
  end

  def create
    
    event = current_user.events.new(event_params)
    invited = event.invited
      if event.save
        UserMailer.invite(invited).deliver_now
      redirect_to events_path
    else 
      redirect_to new_events_path
    end
  end

  def edit

  end

  def update
  end

  def destroy
  end

private
    def set_event
      @event = Event.find(params[:id])
    end

    def event_params
      params.require(:event).permit(:event, :email, :title, :address, :invited, :date, :user_id)
    end
end
