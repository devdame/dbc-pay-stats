class Job < ActiveRecord::Base
  belongs_to :student
  has_many :salaries
  validates :work_type, inclusion: { in: ["consultancy", "product", "freelance", "other", nil] }
end
