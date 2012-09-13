class Banner < ActiveRecord::Base
  
	validates_presence_of :nome
	validates_attachment_size :banner, :less_than => 10.megabytes
	validates_attachment_content_type :banner, :content_type => ['image/jpeg','image/jpg', 'image/png']

	has_attached_file :banner, 
                      :styles => {:small =>"50x75"}

end
