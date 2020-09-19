class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @name = user.name
    @posts = user.posts
  end

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:success] = '退会処理をしました。'
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
