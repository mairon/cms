class Admin::BannersController < Admin::AdminController
  
  before_filter :authenticate_user!
  
  def index
    @banners = Banner.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @banners }
    end
  end

  def new
    @banner = Banner.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @banner }
    end
  end

  def edit
    @banner = Banner.find(params[:id])
  end

  def create
    @banner = Banner.new(params[:banner])

    respond_to do |format|
      if @banner.save
        format.html { redirect_to(admin_banners_url, :notice => 'Banner Gravado com Sucesso') }
        format.xml  { render :xml => @banner, :status => :created, :location => @banner }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @banner.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /banners/1
  # PUT /banners/1.xml
  def update
    @banner = Banner.find(params[:id])

    respond_to do |format|
      if @banner.update_attributes(params[:banner])
        format.html { redirect_to(admin_banners_url, :notice => 'Banner Atualizado com Sucesso') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @banner.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /banners/1
  # DELETE /banners/1.xml
  def destroy
    @banner = Banner.find(params[:id])
    @banner.destroy

    respond_to do |format|
      format.html { redirect_to(admin_banners_url, :notice => 'Banner Deletado com Sucesso') }
      format.xml  { head :ok }
    end
  end
end
