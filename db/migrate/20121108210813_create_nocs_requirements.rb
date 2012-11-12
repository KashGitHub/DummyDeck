class CreateNocsRequirements < ActiveRecord::Migration
  def change
    create_table :nocs_requirements do |t|

      t.timestamps
    end
  end
end
