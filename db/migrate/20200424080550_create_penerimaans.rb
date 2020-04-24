class CreatePenerimaans < ActiveRecord::Migration[6.0]
  def up
    create_table :penerimaans do |t|
      t.string :jalur
      t.integer :notes

      t.timestamps
    end
  end

  def down 
    drop_table :penerimaans
  end
end
