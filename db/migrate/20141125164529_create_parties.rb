class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.string :name
      t.string :description

      t.date :start

      t.timestamps
    end
  end
end
