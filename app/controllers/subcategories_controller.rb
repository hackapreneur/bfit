class SubcategoriesController < ApplicationController

  def index
    @subcategories = Subcategory.all
  end

  def show
    @subcategory = Subcategory.find(params[:id])
  end

  def new
    @subcategory = Subcategory.new
  end

  def create
    @subcategory = Subcategory.new(subcategory_params)

    if @subcategory.save
      flash[:notice] = "Created new Subcategory"
      redirect_to adminCP_path
    else
      render 'new'
    end
  end

  def edit
    @subcategory = Subcategory.find(params[:id])
  end

  def update
    @subcategory = Subcategory.find(params[:id])

    if @subcategory.update_attributes(subcategory_params)
      flash[:notice] = "Updated Subcategory"
      redirect_to :back
    else
      render 'edit'
    end

  end

  def destroy
    @subcategory = Subcategory.find(params[:id])

    @subcategory.destroy

    flash[:notice] = "Deleted " + @subcategory.name + " subcategory"
    redirect_to :back
  end

  private

  def subcategory_params
    params.require(:subcategory).permit(:name)
  end

end
