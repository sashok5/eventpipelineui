class PagesController < ApplicationController

  def home
    @recommended_events = Recommended.events if signed_in?
    @popular_events = Popular.events(20)
    @upcoming_events = Event.upcoming.limit(2)
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
