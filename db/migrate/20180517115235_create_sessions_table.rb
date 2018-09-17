class CreateSessionsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :sessions do |t|
      t.integer :num_session
      t.string :intervenant
      t.datetime :date_debut
      t.datetime :date_fin
      t.integer :id_questionnaire
      t.integer :id_client
    end
  end
end
