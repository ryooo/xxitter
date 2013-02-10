class CreateUsers < ActiveRecord::Migration
  def change
    create_table :Users do |t|
      t.string :name
      t.string :ua

      t.timestamps
    end
  end
end
