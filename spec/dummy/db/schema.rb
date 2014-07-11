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

ActiveRecord::Schema.define(version: 20140711124053) do

  create_table "no_cms_job_offers_applicants", force: true do |t|
    t.string   "name"
    t.string   "position"
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "job_offer_id"
  end

  add_index "no_cms_job_offers_applicants", ["job_offer_id"], name: "index_no_cms_job_offers_applicants_on_job_offer_id"

  create_table "no_cms_job_offers_job_offer_translations", force: true do |t|
    t.integer "no_cms_job_offers_job_offer_id"
    t.string  "locale"
    t.string  "title"
    t.text    "description"
    t.string  "slug"
    t.boolean "draft",                          default: false
  end

  add_index "no_cms_job_offers_job_offer_translations", ["no_cms_job_offers_job_offer_id"], name: "index_no_cms_job_offer_translations_on_offer_id"

  create_table "no_cms_job_offers_job_offers", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
