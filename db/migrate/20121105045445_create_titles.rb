class CreateTitles < ActiveRecord::Migration
  def change
    create_table :titles do |t|
      t.string :name
      t.references :noc

      t.timestamps
    end
    add_index :titles, :noc_id
  end
end
