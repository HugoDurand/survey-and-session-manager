class CreateQuestionnairesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :questionnaires do |t|
      t.string :libelle
      t.date :date_creation
      t.date :date_fin, null: true
      t.boolean :actif, :default => 1
      t.integer :id_client, null: true
      t.string :style, null: true
      t.string :famille, null: true
    end
  end
end
