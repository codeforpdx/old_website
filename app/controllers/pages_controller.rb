class PagesController < ApplicationController

  def home
    @projects = Project.all
    @meeting = Meeting.last
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
    #@tweets = SocialTool.twitter_search
    #route model to here add
    #@news = News.recent.page(params[:page]).per(10)
  end

  # private

  # def news_params
    # params.require(:news).permit(:title, :body)
  # end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meeting
      @meeting = Meeting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meeting_params
      params.require(:meeting).permit(:title, :subtitle, :location, :eventstart, :timeofevent, :url, :body)
    end

end
