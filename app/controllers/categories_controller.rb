class CategoriesController < ApplicationController
  def index
  	@categories = Category.all
  end

  def show
  	@category = Category.find(params[:id])
  end

  def new
  	@category = Category.new
    @category.build_subcategory
  end

  def create
  	@category = Category.new(category_params)

  	if @category.save
  		flash[:notice] = "Created new Category."
  		redirect_to adminCP_path
  	else
  		render 'new'
  	end 
  end 

  def edit
  	@category = Category.find(params[:id])
  end

  def update
  	@category = Category.find(params[:id])

  	if @category.update_attributes(category_params)
  		flash[:notice] = "Updated Category."
  		redirect_to :back
  	else
  		render 'edit' 
  	end

  end 

  def destroy
  	@category = Category.find(params[:id])

  	@category.destroy

  	flash[:notice] = "Deleted " + @category.name + " Category"
  	redirect_to :back
  end

  private
 		def category_params
 			params.require(:category).permit(:name, subcategory_attributes[:name])

 		end

end
