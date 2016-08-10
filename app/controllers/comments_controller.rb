class CommentsController < ApplicationController

  def new
      @kardashian = Kardashian.find(params[:kardashian_id])
      @comment = @kardashian.comments.new
    end

    def create
      @kardashian = Kardashian.find(params[:kardashian_id])
      @comment = @kardashian.comments.create(comment_params)
      redirect_to kardashian_path(@kardashian)
    end

    def show
      @comment = Comment.find(params[:id])
    end

    def destroy
      @kardashian = Kardashian.find(params[:kardashian_id])
      @comment = @kardashian.comments.find(params[:id])
      @comment.destroy
      redirect_to kardashian_path(@kardashian)
    end

    def comment_params
    params.require(:comment).permit(:text)
    end
  end
