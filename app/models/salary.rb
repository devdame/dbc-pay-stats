class Salary < ActiveRecord::Base
  belongs_to :job
  belongs_to :location, foreign_key: :location_geoname_id, primary_key: :geoname_id
  monetize :compensation_cents, with_model_currency: :compensation_currency
end
