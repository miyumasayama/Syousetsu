class StoriesController < ApplicationController

  def index
    @story = Story.all
  end

  def new
    @story = Story.new
  end

  def create 
    @story = Story.new(stories_params)
    respond_to do |format|
      if @story.save
        format.html { redirect_to stories_path, notice: '新規作成が行なわれました'}
        log_in @user
        redirect_to @user
      else
        format.html {render 'new'}
      end
    end
  end
  

  def edit
    @story = Story.find(params[:id])
  end

  def update
    @story = Story.find(params[:id])
      if @story.update(stories_params)
        flash[:notice]= "「#{@story.title}」をかえたよ"
        redirect_to stories_path
      else
        render 'edit'
      end
  end


  def show
    @story= Story.find(params[:id])
  end

  def destroy
    respond_to do |format|
      @story = Story.find(params[:id])
      @story.destroy
    end
  end

  private
  def stories_params
    params.require(:story).permit(:title, :first, :second, :third, :last)
  end

end
