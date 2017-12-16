# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
	Need ruby ruby-2.4.1, Install through RVM
* System dependencies
	rails', 5.1.4
	
	'will_paginate'
	'bootstrap-will_paginate'
	'bcrypt'
* Configuration

* Database creation
	enable_extension "plpgsql"
	required 'pg', '~> 0.18'
  create_table "deposits", force: :cascade do |t|
    t.date "date"
    t.float "amount"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_deposits_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.bigint "phone_number"
    t.string "address"
    t.string "ssn"
    t.boolean "admin", default: false
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "balance", default: 0.0
  end

  create_table "withdrawals", force: :cascade do |t|
    t.date "date"
    t.float "amount"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_withdrawals_on_user_id"
  end

  add_foreign_key "deposits", "users"
  add_foreign_key "withdrawals", "users"
* Database initialization
	rake db:setup
	rake db:migrate
* How to run the test suite
	require 'test_helper'
	rake db:test:load
* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
