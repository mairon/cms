class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :nome, :limit => 50
      t.text :descricao
      t.integer :public
      t.string :cod_video, :limit => 50
      t.string :url_video, :limit => 100

      t.timestamps
    end
  end
end
