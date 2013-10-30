class VideosController < ApplicationController
  def index
  	@videos = Video.all
  end

  def show
  	@video = Video.find(params[:id])
  end

  def new 
    @video = Video.new
  end 

  def create
    @video = Video.new(video_params)

    if @video.save
      flash[:notice] = "Created new Video."
      redirect_to adminCP_path
    else
      render 'new'
    end
  end 


  def edit
    @video = Video.find(params[:id])
  end

  def update
    @video = Video.find(params[:id])

    if @video.update_attributes(video_params)
      flash[:notice] = "Updated Video."
      redirect_to :back
    else
      render 'edit'
    end

  end


  def destroy

    @video = Video.find(params[:id])

    @video.destroy

    flash[:notice] = "Deleted " + @video.title + " Video"
    redirect_to :back
  end




  private

  def video_params
    params.require(:video).permit(:title, :description, :vimeoUrl )
  end

end
