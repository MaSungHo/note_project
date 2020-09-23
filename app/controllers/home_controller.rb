class HomeController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end
  
  def create
    post = Post.new #테이블에 한 행을 추가한다
    post.title = params[:post][:title] #post_title의 내용을 title 행에 추가
    post.content = params[:post][:content] #post_content의 내용을 content 행에 추가
    post.save #테이블에 써준 내용을 모두 저장함.
  
    redirect_to '/home/index'
  end

  def edit
    @post = Post.find(params[:post_id])
  end

  def update
    post = Post.find(params[:post_id])
    post.title = params[:post][:title]
    post.content = params[:post][:content]
    post.save

    redirect_to "/home/index"
  end

  def destroy
    post = Post.find(params[:post_id])
    post.destroy
    
    redirect_to "/home/index"
  end

end
