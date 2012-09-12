class Admin::AssetsController < Admin::AdminController
  
  before_filter :authenticate_user!
  # GET /assets
  # GET /assets.xml
  def index
    @assets = Asset.search(params[:search], params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @assets }
    end
  end

  # GET /assets/1
  # GET /assets/1.xml
  def show
    @asset = Asset.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @asset }
    end
  end

  def preview_detalhe_produto
    @asset   = Asset.find(params[:id])
    @prod    = Produto.find(@asset.produto_id)
    @banners = Banner.where(["produto_id = ?",@prod.id])

    respond_to do |format|
      format.html {render :layout => false}
      format.xml  { render :xml => @asset }
    end
  end

  def gera_detalhe_produto
    @asset   = Asset.find(params[:id])
    @prod    = Produto.find(@asset.produto_id)
    @banners = Banner.where(["produto_id = ?",@prod.id])
    
    render :layout => false

  end


  # GET /assets/new
  # GET /assets/new.xml
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
    @prod = Produto.find(@asset.produto_id)
    @banners = Banner.where(["produto_id = ?",@prod.id])

    respond_to do |format|
      if @asset.save

         index = "#{Rails.root}/public/system/#{@prod.nome}/#{@asset.nome.parameterize}.html"
         File.open(index, 'wb') do |f|
           f.write render :action => 'gera_detalhe_produto', :layout => false  and return 
           f.close
         end
        
        format.html { redirect_to("/admin/settings/assets/#{@asset.produto_id}", :notice => 'Asset was successfully updated.')  and return  }
                
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @asset.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /assets/1
  # PUT /assets/1.xml
  def update
    @asset   = Asset.find(params[:id])

    respond_to do |format|
      if @asset.update_attributes(params[:asset])
        format.html { redirect_to("/admin/settings/assets/#{@asset.produto_id}", :notice => 'Asset was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @asset.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /assets/1
  # DELETE /assets/1.xml
  def destroy
    @asset = Asset.find(params[:id])
    @asset.destroy

    respond_to do |format|
      format.html { redirect_to("/admin/settings/assets/#{@asset.produto_id}", :notice => 'Asset was successfully updated.') }
      format.xml  { head :ok }
    end
  end
end
