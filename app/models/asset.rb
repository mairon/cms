class Asset < ActiveRecord::Base

  has_attached_file :imagem,
      
		    :styles => { :medium => {:geometry => '133x200'}, 
				 :large  => {:geometry => '266X400'},
				 :small  => {:geometry => '50x75'}}, 
		    :url    => "/system/:produto_nome/:attachment/:id/:style/:filename", 
                    :path   => ":rails_root/public/system/:produto_nome/:attachment/:id/:style/:filename"

  has_attached_file :detalhe,
		    :styles => { :medium => {:geometry => '133x200'}, 
				 :large  => {:geometry => '266X400'},
				 :small  => {:geometry => '50x75'}}, 
		    :url    => "/system/:produto_nome/:attachment/:id/:style/:filename", 
                    :path   => ":rails_root/public/system/:produto_nome/:attachment/:id/:style/:filename"
                    
  def self.search(search)
    if search
      where('nome LIKE ?', "%#{search}%")
    else
      scoped
    end
  end
end
