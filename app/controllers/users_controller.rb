class UsersController < ApplicationController

  before_filter :authenticate_user!

  def show
    @user = User.find(params[:id])
    @advertisements = Advertisement.where owner: @user
    @feedbacks = Feedback.where user: @user

    respond_to do |format|
        format.html # show.html.erb
        format.xml { render :xml => @user }
    end

  end
end
