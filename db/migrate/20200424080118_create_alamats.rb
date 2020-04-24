class CreateAlamats < ActiveRecord::Migration[6.0]
  def up
    create_table :alamats do |t|
        t.integer :user_id
        t.string :kp
        t.integer :rt
        t.integer :rw
        t.string :kelurahan
        t.string :kecamatan
        t.string :kotakabupaten
        t.string :provinsi
        t.string :kodepos
        t.string :telp_rumah
        t.string :email
        t.string :tinggal_dengan
  
        t.timestamps
    end
  end

  def down 
    drop_table :alamats
  end
end
