class CreateDutyRightBranches < ActiveRecord::Migration
  def change
    create_table :duty_right_branches do |t|
      t.string :name
      t.references :noc

      t.timestamps
    end
    add_index :duty_right_branches, :noc_id
  end
end
