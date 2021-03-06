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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150718102952) do

  create_table "blogs", force: true do |t|
    t.text     "title"
    t.text     "image"
    t.text     "desc"
    t.text     "tag"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "name"
    t.string   "blog_images"
    t.string   "slug"
  end

  create_table "lucies", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "static_pages", force: true do |t|
    t.string   "about"
    t.text     "tag1"
    t.text     "tag2"
    t.text     "tag3"
    t.text     "tag4"
    t.text     "thinking"
    t.text     "skills"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "contact_number"
    t.string   "company_name"
    t.string   "city"
    t.string   "country"
    t.string   "company_type"
    t.string   "zipcode"
    t.string   "address"
    t.string   "state"
    t.string   "timezone"
    t.text     "about_company"
    t.string   "website"
    t.string   "paypal_account"
    t.text     "payment_info"
    t.string   "skpye_id"
    t.string   "linkedin_id"
    t.string   "gender"
    t.text     "about_me"
  end

end
