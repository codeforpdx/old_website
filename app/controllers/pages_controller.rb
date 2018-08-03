class PagesController < ApplicationController
  def home
    @count = Blog.count
    @blogs = Blog.all
    @projects = Project.all
  end

  def quickstart
  end

  def contact
  end

  def about
  end
  # def projects
  #   #route projects to here
  #   #layout should be different as well
  # end

  def news
    @news = Blog.all
    #@tweets = SocialTool.twitter_search
    #route model to here add
    #@news = News.recent.page(params[:page]).per(10)
  end

  # private

  # def news_params
    # params.require(:news).permit(:title, :body)
  # end

end
