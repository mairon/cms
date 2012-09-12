class Admin::SettingsController < Admin::AdminController
    
  before_filter :authenticate_user!
  
  def index
    @settings = Setting.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @settings }
    end
  end

  def new
    @setting = Setting.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @setting }
    end
  end

  def edit
    @setting = Setting.find(params[:id])
  end

  def create
    @setting = Setting.new(params[:setting])

    respond_to do |format|
      if @setting.save
        format.html { redirect_to(admin_settings_url, :notice => 'Gravado con Sucesso') }
        
      else
        format.html { render :action => "new" }
      end
    end
  end

  def update
    @setting = Setting.find(params[:id])

    respond_to do |format|
      if @setting.update_attributes(params[:setting])
        format.html { redirect_to(admin_settings_url, :notice => 'Atualizado con Sucesso') }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  def destroy
    @setting = Setting.find(params[:id])
    @setting.destroy
    respond_to do |format|
      format.html { redirect_to(admin_settings_url) }
    end
  end
end
