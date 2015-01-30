class FeedbacksController < ApplicationController
  before_action :authenticate_user!
  before_action :find_feedback, only: [:show, :edit, :update, :destroy]

  def index
    @feedbacks = Feedback.all
  end

  def show
  end

  def edit
  end

  def new
    @feedback = Feedback.new
  end

  def create
    @feedback = current_user.feedbacks.new(feedback_params)
    if @feedback.save
      redirect_to feedbacks_path
    else
      render :new
    end
  end

  def update
    if @feedback.update(feedback_params)
      redirect_to feedbacks_path
    else
      render :edit
    end
  end


  def destroy
    @feedback.destroy
    redirect_to feedbacks_path
  end

  private

  def find_feedback
    @feedback = Feedback.find(params[:id])
  end

  def feedback_params
    params.require(:feedback).permit(:text, :rating, :advertisement_id)
  end





end
