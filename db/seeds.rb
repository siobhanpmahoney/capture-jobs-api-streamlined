# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'rest-client'

all_jobs = []

pages = (1..28)
all_jobs = []
pages.to_a.each do |p|
  all_jobs += JSON.parse(RestClient.get("https://www.themuse.com/api/public/jobs?category=Engineering&level=Entry%20Level&page=#{p}&job_location=New%20York%20City%2C%20NY"))["results"]
end
 #
 # 10.times do
 #   u = User.find_or_create_by(username: Faker::BojackHorseman.character.downcase.split(" ").join("."), password: "siobhan", password_confirmation: "siobhan" )
   User.all.each do |u|
     15.times do
     j = all_jobs.sample
     c = Company.find_or_create_by(name: j["company"]["name"], museId: j["company"]["id"])
     Job.find_or_create_by(title: j["name"],
       date_published: j["publication_date"],
       contents: j["contents"],
       museId: j["id"],
       location: j["locations"][0]["name"],
       level: j["levels"][0]["name"],
       category: j["categories"][0]["name"],
       date_saved: Time.now,
       user_id: u.id,
       company_id: c['id']
     )
   end
 end
