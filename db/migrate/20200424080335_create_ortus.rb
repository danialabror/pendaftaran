class CreateOrtus < ActiveRecord::Migration[6.0]
  def up
    create_table :ortus do |t|
      t.integer :user_id
      t.string :nama_a
      t.text :ttl_a
      t.string :pekerjaan_a
      t.string :pendidikan_a
      t.string :kewarganegaraan_a
      t.string :agama_a
      t.string :telp_a
      t.string :nama_i
      t.text :ttl_i
      t.string :pekerjaan_i
      t.string :pendidikan_i
      t.string :kewarganegaraan_i
      t.string :agama_i
      t.string :telp_i
      t.string :nama_w
      t.text :ttl_w
      t.string :pekerjaan_w
      t.string :pendidikan_w
      t.string :kewarganegaraan_w
      t.string :agama_w
      t.string :telp_w

      t.timestamps
    end
  end

  def down 
    drop_table :ortus
  end
end
