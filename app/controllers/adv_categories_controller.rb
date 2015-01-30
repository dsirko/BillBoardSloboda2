class AdvCategoriesController < ApplicationController

  before_filter :find_category, only: [:show, :edit, :update, :destroy]

  def index
    @adv_categories = AdvCategory.all
  end

  def show
  end

  def new
  end

  def edit
  end

  def destroy
    @adv_category.destroy
    redirect_to adv_categories_path  #action: "index"
  end

  def update
    if @adv_category.update(adv_categories_params)
      redirect_to adv_categories_path
    else
      render 'edit'
    end
  end


  def create
    @adv_categories = AdvCategory.new(adv_categories_params)

    if @adv_categories.save
      redirect_to adv_categories_path
    else
      render 'new'
    end
  end

  private

  def find_category
    @adv_category = AdvCategory.find(params[:id])
  end

 def adv_categories_params
    params.require(:adv_category).permit(:name)
  end


end
