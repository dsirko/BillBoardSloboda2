class AdvertisementsController < ApplicationController

  before_filter :find_advertisement, only: [:show, :edit, :update, :destroy]

  def index
    @advertisements = Advertisement.all
  end

  def show
#    unless @advertisement
#      render text: "Page not found", status: 404
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
    redirect_to advertisements_path  #action: "index"
  end

  private

    def find_advertisement   
      @advertisement = Advertisement.find(params[:id])
    end

    def advertisement_params
      params.require(:advertisement).permit(:name, :text)
    end

end
