class AdminCpController < ApplicationController

	def index
		@categories = Category.all
    @subcategories = Subcategory.all
    @videos = Video.all

	end

end
