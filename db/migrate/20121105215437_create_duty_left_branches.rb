class CreateDutyLeftBranches < ActiveRecord::Migration
  def change
    create_table :duty_left_branches do |t|
      t.string :name
      t.references :noc

      t.timestamps
    end
    add_index :duty_left_branches, :noc_id
  end
end
