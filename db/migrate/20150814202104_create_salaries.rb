class CreateSalaries < ActiveRecord::Migration
  def change
    create_table :salaries do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.boolean :negotiated
      t.text :notes
      t.string :location_geoname_id
      t.belongs_to :job

      t.timestamps
    end

    add_money :salaries, :compensation
  end
end
