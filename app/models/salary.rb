class Salary < ActiveRecord::Base
  belongs_to :job
  monetize :compensation_cents, with_model_currency: :compensation_currency
end
