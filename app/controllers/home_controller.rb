class HomeController < ApplicationController
  
  def index
    @banners_topo = Banner.where("tipo = 0  and publicidade = 0")
    @banners_direita = Banner.where("tipo = 1  and publicidade = 0")
    @grupos  = Grupo.all(:order => 'nome')
    @banners_direita_parceiros  = Banner.where("tipo = 1 and publicidade = 1")
    render :layout => 'pages'
  end 

  def contato
    @banners_topo = Banner.where("tipo = 0  and publicidade = 0")
    @banners_direita = Banner.where("tipo = 1  and publicidade = 0")
    @grupos  = Grupo.all(:order => 'nome')
    @banners_direita_parceiros  = Banner.where("tipo = 1 and publicidade = 1")
    render :layout => 'pages'
  end 

  def como_comprar
    @banners_topo = Banner.where("tipo = 0  and publicidade = 0")
    @banners_direita = Banner.where("tipo = 1  and publicidade = 0")
    @grupos  = Grupo.all(:order => 'nome')
    @banners_direita_parceiros  = Banner.where("tipo = 1 and publicidade = 1")
    render :layout => 'pages'
  end 

  def quem_somos
    @banners_topo = Banner.where("tipo = 0  and publicidade = 0")
    @banners_direita = Banner.where("tipo = 1  and publicidade = 0")
    @grupos  = Grupo.all(:order => 'nome')
    @banners_direita_parceiros  = Banner.where("tipo = 1 and publicidade = 1")
    render :layout => 'pages'
  end 


  def admin
  end 

end
