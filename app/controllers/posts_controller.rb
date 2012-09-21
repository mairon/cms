class PostsController < ApplicationController


  def show
    @post = Post.find(params[:id])
    @settings = Setting.first
    @assets = Asset.where("post_id = ?", @post.id)
    render layout: 'page_show'
  end

end
