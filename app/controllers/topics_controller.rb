class TopicsController < ApplicationController
  def new
    @topic = Topic.new
  end

  def index
    @topics = Topic.all
  end

  def create
    @topic = Topic.new(topic_params)
    if @topic.save
      redirect_to topics_index_path, notice: '投稿に成功しました'
    else
      flash.now[:alert] = "投稿に失敗しました"
      render :new
    end
  end

  private
  def topic_params
    params.require(:topic).permit(:description, :title)
  end
end
