class ApplicationController < ActionController::Base
  protect_from_forgery

 def after_sign_in_path_for(resource_or_scope) 
    admin_painel_path 
  end 
  
 def after_sign_out_path_for(resource_or_scope) 
    admin_path 
  end 
  
end
