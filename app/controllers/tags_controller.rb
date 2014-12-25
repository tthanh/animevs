class TagsController < ApplicationController
  def new
  end

  def create
    @fansub = Fansub.find(params[:fansub_id])
    @tag = Tag.new(tag_params)
    @tag.fansub_id = @fansub.id
    if @tag.save
      flash[:success]  = "#{@fansub.name} tag created!"
      redirect_to edit_fansub_url(@fansub)
    else
      flash[:danger] = "Can't create tag!"
      redirect_to edit_fansub_url(@fansub)
    end
  end

  def edit
  end

  def update
  end

  private
  def tag_params
    params.require(:tag).permit(:title, :image_url, :public_date)
  end
end
