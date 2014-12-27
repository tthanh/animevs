class TagsController < ApplicationController

	def create
		@fansub = Fansub.find(params[:fansub_id])
		@tag = Tag.new(tag_params)
		@tag.fansub_id = @fansub.id
		if @tag.save
			flash[:success]  = "#{@fansub.name} tag created!"
			redirect_to edit_fansub_url(@fansub)
		else
			render 'fansubs/edit'
		end
	end

	def update
		@fansub = Fansub.find(params[:fansub_id])
		@tag = @fansub.tag
		if @tag.update_attributes(tag_params)
			flash[:success]  = "#{@fansub.name} tag updated!"
			redirect_to edit_fansub_url(@fansub)
		else
			render 'fansubs/edit'
		end
	end

	private
	def tag_params
		params.require(:tag).permit(:post, :title, :image_url,:image_source, :public_date, :link)
	end
end
