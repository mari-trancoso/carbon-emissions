class CreateEntries < ActiveRecord::Migration[7.1]
  def change
    create_table :entries do |t|
      t.references :emission_source, null: false, foreign_key: true
      t.float :quantity
      t.string :user_name
      t.date :start_date
      t.date :end_date
      t.float :co2
      t.float :ch4
      t.float :n2o
      t.float :co2_eq
      t.float :co2_bio

      t.timestamps
    end
  end
end
