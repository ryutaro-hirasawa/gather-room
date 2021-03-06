class PostsController < ApplicationController
  # before_action :move_to_index, except: [:index, :show, :search]

  def index
    @posts = Post.includes(:user).order("created_at DESC").page(params[:page]).per(9)
  end

  def new
    @post = Post.new    
  end

  def create
    Post.create(post_params)    
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy    
  end

  def edit
    @post = Post.find(params[:id])    
  end
  #新規投稿時と異なる点は、編集→更新の場合は既に存在しているレコードを選択して中身を書き換えるという点です。そのため、editアクションでは編集したいレコードを@postに代入し、編集画面で利用できるようにします。

  def update
    post = Post.find(params[:id])
    post.update(post_params)
  end

  def show
    @post = Post.find(params[:id])
  end

  private
  def post_params
    params.require(:post).permit(:image, :text).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end