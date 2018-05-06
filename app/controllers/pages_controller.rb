class PagesController < ApplicationController

  def home
    if signed_in?
      @popular_events = Recommended.popular.events(current_user)
      @follower_events = Recommended.follower.events(current_user)
      @content_events = Recommended.content.events(current_user)
      @collaborative_events = Recommended.collaborative.events(current_user)
    else
      @popular_events = Popular.events(20)
    end
    @upcoming_events = Event.upcoming(current_user).limit(2)
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
