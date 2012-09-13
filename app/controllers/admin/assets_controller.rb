class Admin::AssetsController < Admin::AdminController
  
  before_filter :authenticate_user!
  def index
    @assets = Asset.search(params[:search], params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @assets }
    end
  end

  def new
    @asset = Asset.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @asset }
    end
  end

  # GET /assets/1/edit
  def edit
    @asset = Asset.find(params[:id])
  end

  # POST /assets
  # POST /assets.xml
  def create
    @asset = Asset.new(params[:asset])
    respond_to do |format|
      if @asset.save
        format.html { redirect_to("/admin/posts/#{@asset.post_id}", :notice => 'Gravado com Sucesso') }                
      else
        format.html { render :action => "new" }
      end
    end
  end

  def update
    @asset   = Asset.find(params[:id])

    respond_to do |format|
      if @asset.update_attributes(params[:asset])
        format.html { redirect_to("/admin/posts/#{@asset.post_id}", :notice => 'Atualizado com Sucesso') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @asset.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @asset = Asset.find(params[:id])
    @asset.destroy

    respond_to do |format|
      format.html { redirect_to("/admin/posts/#{@asset.post_id}", :notice => 'Deletado com Sucesso') }
      format.xml  { head :ok }
    end
  end
end
