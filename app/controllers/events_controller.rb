class EventsController < UsersController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def show
    @event = Event.first
  end

  def create
  
    event = Event.new(params.require(:event)
      if event.save
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
end
