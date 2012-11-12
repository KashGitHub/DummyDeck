class CreateDuties < ActiveRecord::Migration
  def change
    create_table :duties do |t|
      t.string :name
      t.references :noc

      t.timestamps
    end
    add_index :duties, :noc_id
  end
end
