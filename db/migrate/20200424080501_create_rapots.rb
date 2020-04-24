class CreateRapots < ActiveRecord::Migration[6.0]
  def up
    create_table :rapots do |t|
      t.integer :user_id
      t.integer :pai_71
      t.integer :pai_72
      t.integer :pai_81
      t.integer :pai_82
      t.integer :pai_91
      t.integer :indo_71
      t.integer :indo_72
      t.integer :indo_81
      t.integer :indo_82
      t.integer :indo_91
      t.integer :ing_71
      t.integer :ing_72
      t.integer :ing_81
      t.integer :ing_82
      t.integer :ing_91
      t.integer :mtk_71
      t.integer :mtk_72
      t.integer :mtk_81
      t.integer :mtk_82
      t.integer :mtk_91
      t.integer :ipa_71
      t.integer :ipa_72
      t.integer :ipa_81
      t.integer :ipa_82
      t.integer :ipa_91
      t.integer :ips_71
      t.integer :ips_72
      t.integer :ips_81
      t.integer :ips_82
      t.integer :ips_91
      t.text :prestasi
      t.string :info

      t.timestamps
    end
  end

  def down 
    drop_table :rapots
  end
end
