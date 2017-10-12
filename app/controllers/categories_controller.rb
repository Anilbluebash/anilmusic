class CategoriesController < ApplicationController
	def tags
		@tags=ActsAsTaggableOn::Tag.all
	end	

	def show
		tag = ActsAsTaggableOn::Tag.find(params[:id])
		@albums = Album.tagged_with(tag.name)
	end
end

