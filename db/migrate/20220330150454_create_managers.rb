class CreateManagers < ActiveRecord::Migration[6.1]
  def change
    create_table :managers do |t|
      t.string :name
      t.string :position
      t.integer :salary
      t.date :date_of_birth
      t.references :supervisor
    end
  end
end
