class Location < ActiveRecord::Base
  has_many :salaries, foreign_key: :location_geoname_id, primary_key: :geoname_id
  has_many :jobs, through: :salaries
end
