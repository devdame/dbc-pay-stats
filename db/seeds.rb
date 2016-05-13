# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


location1 = Location.create(city: "Chicago", region: "Illinois", country: "USA", geoname_id: "10101")
location2 = Location.create(city: "Mars City", region: "Mars", country: "Space", geoname_id: "666")


student = Student.create(gender: "f", dbc_location: "chicago")

job1 = Job.create(student: student, start_date: 2.years.ago, end_date: 1.years.ago, work_type: "product", title: "astronaut")
salary1 = Salary.create(job: job1, start_date: 2.years.ago, end_date: 1.years.ago, negotiated: false, notes: "it was kool or whatever", location: location1)

job2 = Job.create(student: student, start_date: 1.years.ago, title: "chief of police")
salary2 = Salary.create(job: job2, start_date: 1.years.ago, end_date: 5.weeks.ago, negotiated: true, notes: "whoah, space", location: location2)
salary3 = Salary.create(job: job2, start_date: 5.weeks.ago, negotiated: false, notes: "came back home", location: location1)
