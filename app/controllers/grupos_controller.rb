class GruposController < ApplicationController
    
  def index
    @grupos = Grupo.all(:order => 'nome')

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @grupos }
    end
  end

  def show
    @grupo = Grupo.find(params[:id])
    @banners_topo = Banner.where("tipo = 0")
    @banners_direita = Banner.where("tipo = 1")
    @grupos  = Grupo.all(:order => 'nome')
    render :layout => 'pages'

  end
end
