class Grupo < ActiveRecord::Base
extend FriendlyId 
  
  friendly_id :nome, :use => :slugged  
  validates_presence_of :nome
  validates_uniqueness_of :nome

  has_attached_file :banner,
                    :url    => "/system/:nome/:attachment/:id/:style/:filename", 
                    :path   => ":rails_root/public/system/:nome/:attachment/:id/:style/:filename", 
                    :styles => {:small =>"230x75", :large => "590X50"}

  has_attached_file :menu,
                    :url    => "/system/:nome/:attachment/:id/:style/:filename", 
                    :path   => ":rails_root/public/system/:nome/:attachment/:id/:style/:filename", 
                    :styles => {:small =>"230x75", :large => "355X50"}

end
