class FeedbacksController < ApplicationController
  before_action :authenticate_user!

  def create
    @advertisement = Advertisement.find(params[:advertisement_id])
    @feedback = @advertisement.feedbacks.new(feedback_params)
    @feedback.user = current_user
    @feedback.save
    redirect_to advertisement_path(@advertisement)
  end

  private

  def feedback_params
    params.require(:feedback).permit(:text, :rating, :advertisement_id)
  end

end
