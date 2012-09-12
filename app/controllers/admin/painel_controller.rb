class Admin::PainelController < Admin::AdminController
  
  before_filter :authenticate_user!
  
  def index
  end
  
end
