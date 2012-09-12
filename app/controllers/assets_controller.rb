class AssetsController < ApplicationController
  
  def show
    @asset = Asset.find(params[:id])
    render :layout => 'page_show'
  end
end
