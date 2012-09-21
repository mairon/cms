class AddImagemToPost < ActiveRecord::Migration
  def change
    add_column :posts, :imagen_file_name, :string
    add_column :posts, :imagen_content_type, :string
    add_column :posts, :imagen_file_size, :string
    add_column :posts, :imagen_updated_at, :string
  end
end
