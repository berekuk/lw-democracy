class TopicsController < ApplicationController
  def index
    @topics = Topic.all
  end

  def create
    Topic.create(topic_params)
    redirect_to root_path
  end

  private
  def topic_params
    params.require(:topic).permit(:title)
  end
end
