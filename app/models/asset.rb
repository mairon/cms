class Asset < ActiveRecord::Base
  belongs_to :post 
  has_attached_file :imagem,
      
		    :styles => { :medium => {:geometry => '133x200'}, 
				 :large  => {:geometry => '266X400'},
				 :small  => {:geometry => '50x75'}}

  has_attached_file :detalhe,
		    :styles => { :medium => {:geometry => '133x200'}, 
				 :large  => {:geometry => '266X400'},
				 :small  => {:geometry => '50x75'}}
                    
  def self.search(search)
    if search
      where('nome LIKE ?', "%#{search}%")
    else
      scoped
    end
  end
end
