# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_210_225_032_812) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'backups', force: :cascade do |t|
    t.string 'first'
    t.string 'last'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'events', force: :cascade do |t|
    t.string 'name'
    t.string 'description'
    t.string 'location'
    t.string 'time'
    t.string 'points'
    t.datetime 'date'
    t.string 'link'
    t.float 'event_id'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'households', force: :cascade do |t|
    t.string 'first'
    t.string 'last'
    t.string 'UIN'
    t.string 'family'
    t.string 'email'
    t.string 'phonenumber'
    t.string 'classification'
    t.string 'major'
    t.integer 'points'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'login_attempts', force: :cascade do |t|
    t.string 'username'
    t.string 'password'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end
end
