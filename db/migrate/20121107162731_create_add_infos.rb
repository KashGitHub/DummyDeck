class CreateAddInfos < ActiveRecord::Migration
  def change
    create_table :add_infos do |t|
      t.string :name
      t.references :noc

      t.timestamps
    end
    add_index :add_infos, :noc_id
  end
end
