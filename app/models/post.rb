class Post < ActiveRecord::Base
  has_many :assets, :dependent => :destroy

  has_attached_file :imagen,      
		    :styles => { :medium => {:geometry => '153x230'}, 
				 :large  => {:geometry => '266X400'},
				 :small  => {:geometry => '50x75'}}

 before_validation :monta_video

  def monta_video
  self.url_video = 'http://player.vimeo.com/video/' << self.cod_video << '?title=0&amp;byline=0&amp;portrait=0'
  end


end
