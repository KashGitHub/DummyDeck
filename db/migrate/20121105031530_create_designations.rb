class CreateDesignations < ActiveRecord::Migration
  def change
    create_table :designations do |t|
      t.string :name
      t.references :noc

      t.timestamps
    end
    add_index :designations, :noc_id
  end
end
