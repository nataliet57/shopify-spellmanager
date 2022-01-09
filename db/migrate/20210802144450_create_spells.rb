class CreateSpells < ActiveRecord::Migration[6.1]
  def change
    create_table :spells do |t|
      t.string :title, limit: 70, null: false
	# 		will add range between {0,9} in my spells model
      t.integer :level, null: false
      t.boolean :concentration, null: false
      t.string :description, limit: 4096, null: false

	  t.references :school, null: false, foreign_key: true 


      t.timestamps
    end
  end
end
