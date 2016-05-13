class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :city
      t.string :region
      t.string :country
      t.string :geoname_id

      t.timestamps
    end
  end
end
