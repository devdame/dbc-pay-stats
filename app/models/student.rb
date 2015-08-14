class Student < ActiveRecord::Base
  has_many :jobs
  has_many :salaries, through: :jobs

  validates :dbc_location, inclusion: { in: ["chicago", "san francisco", "new york", "columbus", nil] }
end
