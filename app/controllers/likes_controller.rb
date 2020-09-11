class LikesController < ApplicationController
  def create
    @like = Like.new( user_id: session[:user_id],
                      post_id: params[:id])
    @like.save
    flash[:notice] = "求人に応募が完了しました"
    redirect_to("/posts/jp")
  end

  def destroy
    @like = Like.find_by( user_id: session[:user_id],
                          post_id: params[:id])
    @like.destroy
    flash[:notice] = "求人への応募を取り消しました"
    redirect_to("/posts/jp")
  end
end
