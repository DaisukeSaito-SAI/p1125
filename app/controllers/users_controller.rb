class UsersController < ApplicationController
  def new
    @user = User.new()
  end
  
  def show
    @users = User.all
  end
  
  def create
    @a = (params[:user][:content])
    @user = User.new()
    @user.content = @a
    if @user.save
      redirect_to '/'
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:content)
    end
  
end
