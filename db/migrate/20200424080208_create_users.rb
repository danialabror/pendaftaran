class CreateUsers < ActiveRecord::Migration[6.0]
  def up
    create_table :users do |t|
      t.integer :no_daftar
      t.string :nama_lengkap
      t.string :nama_panggil
      t.string :jk
      t.text :ttl
      t.string :agama
      t.string :cita
      t.string :hoby
      t.integer :jml_saudara
      t.integer :berat
      t.integer :tinggi
      t.string :goldar
      t.string :foto

      t.timestamps
    end
  end

  def down 
    drop_table :users
  end
end
