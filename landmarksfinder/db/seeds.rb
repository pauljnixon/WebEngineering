require 'csv'

Landmark.delete_all
CSV.foreach("#{Rails.root}/db/ne_landmarks.csv") do |row|
   Landmark.create!(:longitude => row[0], :latitude => row[1], :name => row[2], :info => row[3])
end
