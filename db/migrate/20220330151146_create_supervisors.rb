class CreateSupervisors < ActiveRecord::Migration[6.1]
  def change
    create_table :supervisors do |t|
      t.string :name
      t.string :position
      t.integer :salary
      t.date :date_of_birth
      t.references :ceo
    end
  end
end
