class AdminCpController < ApplicationController

	def index
		@categories = Category.all
	end

end
