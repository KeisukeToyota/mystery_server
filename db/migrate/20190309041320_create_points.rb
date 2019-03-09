class CreatePoints < ActiveRecord::Migration[5.2]
  def change
    create_table :points do |t|
      t.references :event, foreign_key: true, null: false
      t.decimal :longitude, precision: 7, scale: 4, null: false
      t.decimal :latitude, precision: 7, scale: 4, null: false
      t.text :message, null: false

      t.timestamps
    end
  end
end
