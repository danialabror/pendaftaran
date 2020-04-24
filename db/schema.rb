# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_24_080550) do

  create_table "alamats", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "user_id"
    t.string "kp"
    t.integer "rt"
    t.integer "rw"
    t.string "kelurahan"
    t.string "kecamatan"
    t.string "kotakabupaten"
    t.string "provinsi"
    t.string "kodepos"
    t.string "telp_rumah"
    t.string "email"
    t.string "tinggal_dengan"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "kesehatans", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "user_id"
    t.string "tbc"
    t.string "malaria"
    t.string "chotipa"
    t.string "cacar"
    t.string "lainnya"
    t.string "kelainan_jasmani"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ortus", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "user_id"
    t.string "nama_a"
    t.text "ttl_a"
    t.string "pekerjaan_a"
    t.string "pendidikan_a"
    t.string "kewarganegaraan_a"
    t.string "agama_a"
    t.string "telp_a"
    t.string "nama_i"
    t.text "ttl_i"
    t.string "pekerjaan_i"
    t.string "pendidikan_i"
    t.string "kewarganegaraan_i"
    t.string "agama_i"
    t.string "telp_i"
    t.string "nama_w"
    t.text "ttl_w"
    t.string "pekerjaan_w"
    t.string "pendidikan_w"
    t.string "kewarganegaraan_w"
    t.string "agama_w"
    t.string "telp_w"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "penerimaans", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "jalur"
    t.integer "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rapots", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "user_id"
    t.integer "pai_71"
    t.integer "pai_72"
    t.integer "pai_81"
    t.integer "pai_82"
    t.integer "pai_91"
    t.integer "indo_71"
    t.integer "indo_72"
    t.integer "indo_81"
    t.integer "indo_82"
    t.integer "indo_91"
    t.integer "ing_71"
    t.integer "ing_72"
    t.integer "ing_81"
    t.integer "ing_82"
    t.integer "ing_91"
    t.integer "mtk_71"
    t.integer "mtk_72"
    t.integer "mtk_81"
    t.integer "mtk_82"
    t.integer "mtk_91"
    t.integer "ipa_71"
    t.integer "ipa_72"
    t.integer "ipa_81"
    t.integer "ipa_82"
    t.integer "ipa_91"
    t.integer "ips_71"
    t.integer "ips_72"
    t.integer "ips_81"
    t.integer "ips_82"
    t.integer "ips_91"
    t.text "prestasi"
    t.string "info"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "no_daftar"
    t.string "nama_lengkap"
    t.string "nama_panggil"
    t.string "jk"
    t.text "ttl"
    t.string "agama"
    t.string "cita"
    t.string "hoby"
    t.integer "jml_saudara"
    t.integer "berat"
    t.integer "tinggi"
    t.string "goldar"
    t.string "foto"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
