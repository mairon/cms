# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120912230804) do

  create_table "assets", :force => true do |t|
    t.string   "imagem_file_name"
    t.string   "imagem_content_type"
    t.integer  "imagem_file_size"
    t.datetime "imagem_updated_at"
    t.decimal  "preco",                               :precision => 15, :scale => 2, :default => 0.0
    t.string   "nome",                 :limit => 100
    t.text     "descricao"
    t.string   "url",                  :limit => 150
    t.integer  "public"
    t.integer  "produto_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "detalhe_file_name"
    t.string   "detalhe_content_type"
    t.string   "detalhe_file_size"
    t.string   "detalhe_updated_at"
    t.integer  "grupo_id"
    t.string   "grupo_nome"
    t.string   "src_video",            :limit => 200
    t.string   "src_imagem",           :limit => 200
    t.string   "cod_video",            :limit => 200
    t.string   "cod_imagem",           :limit => 200
    t.integer  "post_id"
  end

  create_table "banners", :force => true do |t|
    t.integer  "produto_id"
    t.string   "nome"
    t.text     "descricao"
    t.string   "url"
    t.string   "banner_file_name"
    t.string   "banner_content_type"
    t.integer  "banner_file_size"
    t.datetime "banner_updated_at"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tipo"
    t.integer  "publicidade"
  end

  create_table "classes", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "grupos", :force => true do |t|
    t.string   "nome"
    t.integer  "classe_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "classe_nome"
    t.string   "banner_file_name"
    t.string   "banner_content_type"
    t.string   "banner_file_size"
    t.string   "banner_updated_at"
    t.string   "menu_file_name"
    t.string   "menu_content_type"
    t.string   "menu_file_size"
    t.string   "menu_updated_at"
    t.integer  "dimensao",            :limit => 2
    t.string   "slug",                :limit => 100
  end

  create_table "posts", :force => true do |t|
    t.string   "nome",       :limit => 50
    t.text     "descricao"
    t.integer  "public"
    t.string   "cod_video",  :limit => 50
    t.string   "url_video",  :limit => 100
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "produtos", :force => true do |t|
    t.integer  "grupo_id"
    t.string   "grupo_nome",          :limit => 150
    t.string   "nome",                :limit => 250
    t.text     "descricao"
    t.integer  "public"
    t.decimal  "preco",                              :precision => 15, :scale => 2, :default => 0.0
    t.string   "imagem_file_name",    :limit => 100
    t.string   "imagem_content_type", :limit => 100
    t.string   "imagem_file_size",    :limit => 100
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "src_imagem",          :limit => 150
    t.string   "cod_imagem",          :limit => 100
    t.string   "src_video"
    t.string   "slug",                :limit => 100
    t.string   "titulo",              :limit => 150
    t.string   "url_twitter",         :limit => 150
    t.string   "url_facebook",        :limit => 150
    t.string   "url_google_mais",     :limit => 150
    t.string   "url_youtube",         :limit => 150
    t.string   "url_atendimento",     :limit => 150
    t.string   "cor_bg",              :limit => 10
    t.string   "fone_atendimento",    :limit => 50
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "bg_file_name"
    t.string   "bg_content_type"
    t.integer  "bg_file_size"
    t.datetime "bg_updated_at"
  end

  create_table "settings", :force => true do |t|
    t.string "nome",            :limit => 50
    t.string "quem_somos",      :limit => 250
    t.string "titulo",          :limit => 120
    t.string "url_twitter",     :limit => 150
    t.string "url_facebook",    :limit => 150
    t.string "url_google_mais", :limit => 150
    t.string "url_youtube",     :limit => 150
    t.string "url_atendimento", :limit => 150
    t.string "keyworks",        :limit => 250
    t.string "descricao",       :limit => 270
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
