class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :work_type
      t.datetime :start_date
      t.datetime :end_date
      t.belongs_to :student

      t.timestamps
    end
  end
end
