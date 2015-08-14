class AddCompensationToSalaries < ActiveRecord::Migration
  def change
    add_money :salaries, :compensation
  end
end
