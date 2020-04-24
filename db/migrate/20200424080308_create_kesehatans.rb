class CreateKesehatans < ActiveRecord::Migration[6.0]
  def up
    create_table :kesehatans do |t|
      t.integer :user_id
      t.string :tbc
      t.string :malaria
      t.string :chotipa
      t.string :cacar
      t.string :lainnya
      t.string :kelainan_jasmani

      t.timestamps
    end
  end

  def down 
    drop_table :kesehatans
  end
end
