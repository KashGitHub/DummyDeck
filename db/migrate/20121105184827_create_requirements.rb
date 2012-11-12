class CreateRequirements < ActiveRecord::Migration
  def change
    create_table :requirements do |t|
      t.string :name
      t.references :noc

      t.timestamps
    end
    add_index :requirements, :noc_id
  end
end
