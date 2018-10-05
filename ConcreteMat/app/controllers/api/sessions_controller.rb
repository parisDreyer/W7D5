class Api::SessionsController < ApplicationController

  def create
    @user = User.find_by_credentials(params[:user][:username], params[:user][:password])
    if(@user)
      login(@user)
      render :show
    else
      render json: @user.errors.full_messages
    end
  end

  def destroy
    if(logged_in?)
      logout
      render json: '{}'
    else
      render json: '404 Not Found'
    end
  end

end
