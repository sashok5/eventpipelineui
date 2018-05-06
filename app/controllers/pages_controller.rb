class PagesController < ApplicationController

  def home
    if signed_in?
      @popular_events = Recommended.popular(current_user).events
      @follower_events = Recommended.follower(current_user).events
      @content_events = Recommended.content(current_user).events
      @collaborative_events = Recommended.collaborative(current_user).events
    else
      @popular_events = Popular.events(20)
    end
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
