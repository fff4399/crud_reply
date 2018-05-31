class BoardController < ApplicationController
  def index   #모든 post 모아서 title/ editor 보여줌
    @list = Post.all
  end

  def show  #특정 post의 title/ content/ editor 보여줌
    @post_id = params[:post_id]
    @one_post = Post.find(@post_id)
    
    #
    @show_reply = Post.find(@post_id).replies
  end

  def new
    
  end

  def create
    new_row = Post.new
    
    new_row.title = params[:title]
    new_row.editor = params[:editor]
    new_row.content = params[:content]
    
    new_row.save
    
    redirect_to '/board/index'
  end

  def edit
    @edit_post = Post.find(params[:post_id])
  end

  def update
    update_post = Post.find(params[:post_id])
    
    update_post.title = params[:title]
    update_post.editor = params[:editor]
    update_post.content = params[:content]
    
    update_post.save
    
    redirect_to '/board/index/'
  end

  def delete
    delete_post = Post.find(params[:post_delete])
    delete_post.destroy
    
    redirect_to '/board/index'
  end
end
