class CreateItem < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :description
      t.decimal :value, null: false, precision: 12, scale: 2, default: 0.0
      t.string :frequency
      t.datetime :next_date
      t.datetime :end_date
      t.timestamps null: false
    end
  end
end
