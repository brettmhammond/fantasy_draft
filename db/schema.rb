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

ActiveRecord::Schema.define(version: 20140728212755) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "byes", force: true do |t|
    t.integer  "team_id"
    t.integer  "year"
    t.integer  "week"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "byes", ["team_id"], name: "index_byes_on_team_id", using: :btree

  create_table "fantasy_draft_orders", force: true do |t|
    t.integer  "fantasy_league_id"
    t.integer  "fantasy_team_id"
    t.integer  "fantasy_draft_id"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fantasy_draft_orders", ["fantasy_draft_id"], name: "index_fantasy_draft_orders_on_fantasy_draft_id", using: :btree
  add_index "fantasy_draft_orders", ["fantasy_league_id"], name: "index_fantasy_draft_orders_on_fantasy_league_id", using: :btree
  add_index "fantasy_draft_orders", ["fantasy_team_id"], name: "index_fantasy_draft_orders_on_fantasy_team_id", using: :btree

  create_table "fantasy_draft_styles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fantasy_drafts", force: true do |t|
    t.integer  "fantasy_league_id"
    t.integer  "fantasy_draft_style_id"
    t.integer  "player_id"
    t.integer  "max_amount"
    t.integer  "rounds"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fantasy_drafts", ["fantasy_draft_style_id"], name: "index_fantasy_drafts_on_fantasy_draft_style_id", using: :btree
  add_index "fantasy_drafts", ["fantasy_league_id"], name: "index_fantasy_drafts_on_fantasy_league_id", using: :btree
  add_index "fantasy_drafts", ["player_id"], name: "index_fantasy_drafts_on_player_id", using: :btree

  create_table "fantasy_leagues", force: true do |t|
    t.string   "name"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fantasy_leagues_fantasy_teams", force: true do |t|
    t.integer "fantasy_league_id"
    t.integer "fantasy_team_id"
  end

  add_index "fantasy_leagues_fantasy_teams", ["fantasy_league_id"], name: "index_fantasy_leagues_fantasy_teams_on_fantasy_league_id", using: :btree
  add_index "fantasy_leagues_fantasy_teams", ["fantasy_team_id"], name: "index_fantasy_leagues_fantasy_teams_on_fantasy_team_id", using: :btree

  create_table "fantasy_players", force: true do |t|
    t.integer  "fantasy_league_id"
    t.integer  "fantasy_team_id"
    t.integer  "fantasy_draft_id"
    t.integer  "player_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "price"
  end

  add_index "fantasy_players", ["fantasy_draft_id"], name: "index_fantasy_players_on_fantasy_draft_id", using: :btree
  add_index "fantasy_players", ["fantasy_league_id"], name: "index_fantasy_players_on_fantasy_league_id", using: :btree
  add_index "fantasy_players", ["fantasy_team_id"], name: "index_fantasy_players_on_fantasy_team_id", using: :btree
  add_index "fantasy_players", ["player_id"], name: "index_fantasy_players_on_player_id", using: :btree

  create_table "fantasy_teams", force: true do |t|
    t.string   "name"
    t.string   "owner"
    t.string   "logo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "fantasy_league_id"
  end

  add_index "fantasy_teams", ["fantasy_league_id"], name: "index_fantasy_teams_on_fantasy_league_id", using: :btree

  create_table "leagues", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "player_auction_values", force: true do |t|
    t.integer  "player_id"
    t.integer  "year"
    t.integer  "min_price"
    t.integer  "max_price"
    t.integer  "avg_price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "player_auction_values", ["player_id"], name: "index_player_auction_values_on_player_id", using: :btree

  create_table "player_projections", force: true do |t|
    t.integer  "player_id"
    t.integer  "year"
    t.integer  "fantasy_points"
    t.integer  "completions"
    t.integer  "attempts"
    t.integer  "pass_yards"
    t.integer  "pass_tds"
    t.integer  "pass_ints"
    t.integer  "rush_yards"
    t.integer  "rush_tds"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "player_projections", ["player_id"], name: "index_player_projections_on_player_id", using: :btree

  create_table "player_ranks", force: true do |t|
    t.integer  "player_id"
    t.integer  "year"
    t.integer  "position_rank"
    t.integer  "overall_rank"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "player_ranks", ["player_id"], name: "index_player_ranks_on_player_id", using: :btree

  create_table "players", force: true do |t|
    t.integer  "league_id"
    t.integer  "team_id"
    t.integer  "position_id"
    t.integer  "ffn_player_id"
    t.string   "college"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "name"
    t.string   "height"
    t.string   "weight"
    t.string   "uniform_number"
    t.string   "date_of_birth"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "players", ["league_id"], name: "index_players_on_league_id", using: :btree
  add_index "players", ["position_id"], name: "index_players_on_position_id", using: :btree
  add_index "players", ["team_id"], name: "index_players_on_team_id", using: :btree

  create_table "positions", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedules", force: true do |t|
    t.integer  "ffn_game_id"
    t.integer  "away_team_id"
    t.integer  "home_team_id"
    t.integer  "year"
    t.integer  "week"
    t.date     "date"
    t.string   "time"
    t.string   "broadcaster"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "schedules", ["away_team_id"], name: "index_schedules_on_away_team_id", using: :btree
  add_index "schedules", ["home_team_id"], name: "index_schedules_on_home_team_id", using: :btree

  create_table "teams", force: true do |t|
    t.integer  "league_id"
    t.string   "name"
    t.string   "city"
    t.string   "key"
    t.string   "conference"
    t.string   "division"
    t.string   "logo"
    t.string   "string"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "teams", ["league_id"], name: "index_teams_on_league_id", using: :btree

end
