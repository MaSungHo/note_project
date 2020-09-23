class HomeController < ApplicationController
  before_action :set_post, only: %i(edit update destroy)

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end
  
  def create
    post = Post.new(post_params)
    respond_to do |format|
      if post.save #테이블에 써준 내용을 모두 저장함.
        format.html{redirect_to posts_path, notice:'게시물이 성공적으로 작성됐습니다.'}
      else
        format.html{render :new}
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @post.update(post_params)
       format.html{ redirect_to posts_path, notice: '게시물이 성공적으로 수정됐습니다' }
      else
        format.html{ render :edit }
      end
    end
  end

  def destroy
    @post.destroy
    
    redirect_to posts_path
  end

  private
  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content)
  end

end
