class HomeController < ApplicationController
  
  def index
    @banners_topo = Banner.where("tipo = 0  and publicidade = 0")
    @settings = Setting.first
    render :layout => 'pages'
  end 

  def admin
  end 

end
