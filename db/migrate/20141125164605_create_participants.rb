class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string :name
      t.string :email
      t.integer :party_id

      t.timestamps
    end
    add_index(:participants, :party_id)
  end
end
