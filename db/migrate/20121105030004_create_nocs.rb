class CreateNocs < ActiveRecord::Migration
  def change
    create_table :nocs do |t|
      t.string :code
      t.text :description

      t.timestamps
    end
  end
end
