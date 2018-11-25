class TopPagesController < ApplicationController
  def home
    @feeds = Feed.order("RANDOM()").limit(3)
  end

  def help
    @feeds = Feed.all
  end
end
