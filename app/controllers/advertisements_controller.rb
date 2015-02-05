class AdvertisementsController < ApplicationController

  before_filter :find_advertisement, only: [:show, :edit, :update, :destroy]

  def index
      @advertisements = Advertisement.search_new(params[:search]).page(params[:page]).per_page(5) # add paginate
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    @advertisement = current_user.advertisements.new(advertisement_params)

    if @advertisement.save
      redirect_to @advertisement
    else
      render 'new'
    end
  end

  def update
    if @advertisement.update(advertisement_params)
      redirect_to @advertisement
    else
      render 'edit'
    end
  end

  def destroy
    @advertisement.destroy
    redirect_to advertisements_path
  end

  private

    def find_advertisement   
      @advertisement = Advertisement.find(params[:id])
    end

    def advertisement_params
      params.require(:advertisement).permit(:name, :text, :tag_ids => [])
    end

end
