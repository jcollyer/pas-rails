class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create!(comment_params)
    redirect_to @post
  end

  # def edit
  #   @comment = Comment.find(params[:id])
  #   @post = Post.find(params[:note_id])
  # end

  # def update
  #   @comment = Comment.find(params[:comment_id])
  #   @post = @comment.posts.find(params[:id])
  #   respond_to do |format|
  #     if @post.update(post_params)
  #       format.html { redirect_to posts_path, notice: 'Post was successfully updated.' }
  #       format.json { head :no_content }
  #     else
  #       format.html { render action: 'edit' }
  #       format.json { render json: @post.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to posts_path }
      format.json { head :no_content }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:post, :body, :author)
    end
end
