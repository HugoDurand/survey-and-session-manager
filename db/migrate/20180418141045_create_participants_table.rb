class CreateParticipantsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :participants do |t|
      t.string :nom
      t.string :prenom
      t.integer :client
      t.integer :session
    end
  end
end
