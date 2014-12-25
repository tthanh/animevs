class FansubsController < ApplicationController

  def index
    @fansubs = Fansub.all
  end

  def new
    @fansub = Fansub.new
  end

  def create
    @fansub = Fansub.new(fansub_params)
    if @fansub.save
      flash[:success] = "Fansub #{@fansub.name} information saved!"
      redirect_to fansubs_url
    else
      render 'new'
    end
  end

  def show
  end

  def edit
    @fansub = Fansub.find(params[:id])
    @tag = @fansub.tag.nil? ? Tag.new : @fansub.tag
  end

  def update
    @fansub = Fansub.find(params[:id])
    if @fansub.update_attributes(fansub_params)
      flash[:success] = "Fansub #{@fansub.name} information updated!"
      redirect_to fansubs_url
    else
      render 'edit'
    end
  end

  def destroy
  end

  private
  def fansub_params
    params.require(:fansub).permit(:name, :homepage)
  end
end
