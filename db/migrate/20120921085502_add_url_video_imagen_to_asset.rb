class AddUrlVideoImagenToAsset < ActiveRecord::Migration
  def change
    add_column :posts, :url_video_imagen, :string
  end
end
