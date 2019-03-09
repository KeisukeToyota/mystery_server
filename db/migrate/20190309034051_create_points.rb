class CreatePoints < ActiveRecord::Migration[5.2]
  def change
    create_table :points do |t|
      t.references :event, foreign_key: true, null: false
      t.decimal :longitude, precision: 7, scale: 4
      t.decimal :latitude, precision: 7, scale: 4
      t.text :message

      t.timestamps
    end
  end
end
