class SettingsController < ApplicationController  
  # GET /settings
  # GET /settings.xml
  def index
		@pd = Setting.all(:limit => '8', :order => 'id desc')	
	  render :layout => 'home'  
  end

  # GET /settings/1
  # GET /settings/1.xml
  def show
  @produto = Setting.find(params[:id])
	@pd = Setting.all	
  @title = @produto.nome
  
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @produto }
    end
  end

	def filtro                       #
		@pd = Setting.paginate(
            :conditions => ['nome LIKE ?', "%#{params[:busca]}%"],
            :page     => params[:page],
            :per_page => 15,
            :order => "nome" )
			render :layout => false
    end
end
