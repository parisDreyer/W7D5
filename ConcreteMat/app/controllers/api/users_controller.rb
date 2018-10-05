class Api::UsersController < ApplicationController


  def create
    @user = User.new(user_params)
    # debugger
    if(@user.save!)
      login(@user)
      render :show
    else
      errors = @user.errors.full_messages
      render json: errors
    end
  end

  def show
    @user = User.find_by(params[:id])
    render json: @user
  end


  private
  def user_params
    # debugger
    params.require(:user).permit(:username, :password, :email)
  end

end
