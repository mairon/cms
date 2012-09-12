class Banner < ActiveRecord::Base
  belongs_to :produto
  
  validates_attachment_size :banner, :less_than => 10.megabytes
  validates_attachment_content_type :banner, :content_type => ['image/jpeg','image/jpg', 'image/png']

  has_attached_file :banner, 
                    :url    => "/system/:produto_nome/:attachment/:id/:style/:filename", 
                    :path   => ":rails_root/public/system/:produto_nome/:attachment/:id/:style/:filename", 
                    :styles => {:small =>"220x160", :large => "920X260" , :direito => "335X300"}

end
