class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :gender
      t.string :dbc_location

      t.timestamps
    end
  end
end
