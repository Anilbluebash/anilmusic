class ShowcaseController < ApplicationController
	def songs
		@songs=Song.all.paginate(page: params[:page], per_page: 5)
	end
end
