class CreateEspresso < ActiveRecord::Migration[7.0]
  def change
    create_table :espressos do |t|
      t.string :name
      t.string :image
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end