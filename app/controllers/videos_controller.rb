class VideosController < ApplicationController
  def index
  	@video = Video.all
  end

  def show
  	@video = Video.find(params[:id])
  end

  def new 

  end 

  def create

  end 


  def edit

  end

  def update

  end 

  private

end
