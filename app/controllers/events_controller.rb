class EventsController < ApplicationController

  def index
    category_id = params[:interest]
    @events = Event.upcoming unless category_id
    @interest = EventCategory.find(category_id)
    @events = @interest.events
  end

  def upcoming
    @all_events = true
    @upcoming_events = Event.upcoming
  end

  def show
    @event = Event.find(params[:id])
    @attending = User.joins(:attendances).where('attendances.event_id'=> params[:id])
    if signed_in?
      @attendance = @event.attendances.find_by(:user_id=> current_user.id)
      # create a click entry
      EventView.save_click(@event, current_user)
    end

  end

 def edit
   @event = Event.find(params[:id])
 end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.creator = current_user
    if @event.save
      flash[:success] = "Event created!"
      redirect_to root_url
    else
      render action: 'new'
    end
  end

  def update
    @event = Event.find(params[:id])

    if @event.update_attributes(event_params)
      flash[:success] = "Event updated!"
      redirect_to root_url
    else
      render action: 'edit'
    end
  end

  def destroy
    @event.destroy
    redirect_to root_url
  end

  def attend
    @event = Event.find(params[:id])
    @attendance = @event.attendances.build(:user_id => current_user.id)

    if @attendance.save
      flash[:success] = "Thank you for joining even!"
      redirect_to event_url
    else
      render action: 'attend'
    end

  end

  def rsvp
    @event = Event.find(params[:id])


    if Attendance.rsvp(@event, current_user, params[:attendance][:RSVP_Status])

      flash[:success] = "Thank you for RSVPing!"
      redirect_to event_url
    else
      render action: 'rsvp'
    end
  end


  private

    def event_params
      params.require(:event).permit(:title, :desc, :event_host,
                                    :event_date, :event_start_time, :snippet_image, :addr,
                                    :street, :city, :state, :zip, tag_ids: [])
    end

  def rsvp_params
    params.permit(:RSVP_status)

  end

end
