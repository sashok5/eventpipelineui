class PagesController < ApplicationController

  def home
    if signed_in?
      @recommended_events = Recommended.events
   else
     @upcoming_events = Event.upcoming.limit(2)
     @popular_events = Popular.events
    end
  end

  def help
  end

  def about
  end

  def contact
  end

  def donate
    if request.post?
      flash[:success] = "Thank you for your donation!"
      redirect_to root_path
    end

  end

end
