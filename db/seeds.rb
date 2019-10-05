# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Line.destroy_all

lines = [["bakerloo", "Bakerloo", "#b25f00"], ["central", "Central", "#f12d11"], ["circle", "Circle", "#ffd401"], ["district", "District", "#00853a"], ["dlr", "DLR", "#00b1b1"], ["hammersmith-city", "Hammersmith & City", "#f5859f"], ["jubilee", "Jubilee", "#959ca1"], ["london-overground", "London Overground", "#f6800b"], ["metropolitan", "Metropolitan", "#99005e"], ["northern", "Northern", "#252122"], ["piccadilly", "Piccadilly", "#1a3c96"], ["tfl-rail", "Tfl Rail", "#5d75b5"], ["victoria", "Victoria", "#009cdf"], ["waterloo-city", "Waterloo & City", "#81cebc"]]

lines.each do |line|
  Line.create!(color: line.last, line_id: line.first, name: line[1])
end
