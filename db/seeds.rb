# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Line.destroy_all
Station.destroy_all

lines = [
  ["bakerloo", "Bakerloo", "#b25f00"],
  ["central", "Central", "#f12d11"],
  ["circle", "Circle", "#ffd401"],
  ["district", "District", "#00853a"],
  ["dlr", "DLR", "#00b1b1"],
  ["hammersmith-city", "Hammersmith & City", "#f5859f"],
  ["jubilee", "Jubilee", "#959ca1"],
  ["london-overground", "London Overground", "#f6800b"],
  ["metropolitan", "Metropolitan", "#99005e"],
  ["northern", "Northern", "#252122"],
  ["piccadilly", "Piccadilly", "#1a3c96"],
  ["tfl-rail", "TfL Rail", "#5d75b5"],
  ["victoria", "Victoria", "#009cdf"],
  ["waterloo-city", "Waterloo & City", "#81cebc"]
]

lines.each do |line|
  Line.create!(color: line.last, line_id: line.first, name: line[1])
end

victoria = [
  "Walthamstow Central",
  "Blackhorse Road",
  "Tottenham Hale",
  "Seven Sisters",
  "Finsbury Park",
  "Highbury & Islington",
  "King's Cross St. Pancras",
  "Warren Street",
  "Oxford Circus",
  "Green Park",
  "Victoria",
  "Pimlico",
  "Vauxhall",
  "Stockwell",
  "Brixton"
]

bakerloo = [
  "Harrow & Wealdstone",
  "Kenton",
  "South Kenton",
  "North Wembly",
  "Wembly Central",
  "Stonebridge Park",
  "Harlsden",
  "Willesden Junction",
  "Kensal Green",
  "Queen's Park",
  "Kilburn Park",
  "Maida Vale",
  "Warwick Avenue",
  "Paddington",
  "Edgeware Road",
  "Marylebone",
  "Baker Street",
  "Regent's Park",
  "Oxford Circus",
  "Piccadilly Circus",
  "Charing Cross",
  "Embankment",
  "Lambeth North",
  "Elephant & Castle"
]

jubilee = [
  "Stanmore",
  "Canons Park",
  "Queensbury",
  "Kingsbury",
  "Wembly Park",
  "Neasden",
  "Dollis Hill",
  "Willesden Green",
  "Kilburn",
  "West Hampstead",
  "Finchley Road",
  "Swiss Cottage",
  "St John's Wood",
  "Baker Street",
  "Bond Street",
  "Green Park",
  "Westminster",
  "Waterloo",
  "Southwark",
  "London Bridge",
  "Bermondsey",
  "Canada Water",
  "Canary Wharf",
  "North Greenwich",
  "Canning Town",
  "West Ham",
  "Stratford"
]

# district has branches!
district = [
  "Upminster",
  "Upminster Bridge",
  "Hornchurch",
  "Elm Park",
  "Dagenham East",
  "Dagenham Heathway",
  "Becontree",
  "Upney",
  "Barking",
  "East Ham",
  "Plaistow",
  "West Ham",
  "Bromley-by-Bow",
  "Bow Road",
  "Bow Chruch",
  "Stepney Green",
  "Whitechapel",
  "Aldgate East",
  "Tower Hill",
  "Monument",
  "Cannon Street",
  "Embankment",
  "Westminster",
  "Victoria",
  "Sloane Square",
  "South Kensington",
  "Earl's Court",
  "West Kensington",
  "Barons Court",
  "Hammersmith",
  "Ravenscourt Park",
  "Stamford Brook",
  "Turnham Green",
  "Chiswick Park",
  "Acton Town",
  "Ealing Common",
  "Ealing Broadway"
]

hammersmith = [
  "Barking",
  "East Ham",
  "Plaistow",
  "West Ham",
  "Bromley-by-Bow",
  "Bow Road",
  "Bow Chruch",
  "Stepney Green",
  "Whitechapel",
  "Aldgate East",
  "Liverpool Street",
  "Moorgate",
  "Barbican",
  "Farringdon",
  "King's Cross St. Pancras",
  "Euston Square",
  "Great Portland Street",
  "Baker Street",
  "Edgeware Road",
  "Paddington",
  "Royal Oak",
  "Westbourne Park",
  "Ladbroke Grove",
  "Latimer Road",
  "Wood Lane",
  "Shepherd's Bush Market",
  "Goldhawk Road",
  "Hammersmith"
]

circle = [
  "Hammersmith",
  "Goldhawk",
  "Shepherd's Bush Market",
  "Wood Lane",
  "Latimer Road",
  "Ladbroke Grove",
  "Westbourne Park",
  "Royal Oak",
  "Paddington",
  "Edgeware Road",
  "Baker Street",
  "Great Portland Street",
  "Euston Square",
  "King's Cross St. Pancras",
  "Farringdon",
  "Barbican",
  "Moorgate",
  "Liverpool Street",
  "Aldgate",
  "Tower Gateway",
  "Monument",
  "Cannon Street",
  "Mansion House",
  "Blackfriars",
  "Temple",
  "Embankment",
  "Westminster",
  "Victoria",
  "Sloane Square",
  "South Kensington",
  "Gloucester",
  "High Street Kensignton",
  "Notting Hill Gate",
  "Bayswater"
]

piccadilly = [
  "Cockfosters",
  "Oakwood",
  "Southgate",
  "Arnos Grove",
  "Bounds Green",
  "Wood Green",
  "Turnpike Lane",
  "Manor House",
  "Finsbury Park",
  "Arsenal",
  "Holloway Road",
  "Caledonian Road",
  "King's Cross St. Pancras",
  "Russel Square",
  "Holborn",
  "Covent Garden",
  "Leicester Square",
  "Piccadilly Circus",
  "Green Park",
  "Hyde Park Corner",
  "Knightsbridge",
  "South Kensington",
  "Gloucester",
  "Earl's Court",
  "Barons Court",
  "Hammersmith",
  "Turnham Green",
  "Acton Town",
  "South Ealing",
  "Northfields",
  "Boston Manor",
  "Osterley",
  "Hounslow East",
  "Hounslow Central",
  "Hounslow West",
  "Hatton Cross",
  "Heathrow Terminal 4",
  "Heathrow Terminal 1,2,3"
]

central = [
  "Eping",
  "Theydon Bois",
  "Debden",
  "Loughton",
  "Buckhurst Hill",
  "Woodford",
  "South Woodford",
  "Snaresbrook",
  "Leytonstone",
  "Leyton",
  "Stratford",
  "Mile End",
  "Bethnal Green",
  "Liverpool Street",
  "Bank",
  "St Paul's",
  "Chancery Lane",
  "Holborn",
  "Tottenham Court Road",
  "Oxford Circus",
  "Bond Street",
  "Marble Arch",
  "Lancaster Gate",
  "Queensway",
  "Notting Hill",
  "Holland Park",
  "Shepherd's Bush",
  "White City",
  "East Acton",
  "North Acton",
  "West Acton",
  "Ealing Broadway"
]

metropolitan = [
  "Aldgate",
  "Liverpool Street",
  "Moorgate",
  "Barbican",
  "Farringdon",
  "King's Cross St. Pancras",
  "Euston Square",
  "Great Portland Street",
  "Baker Street",
  "Finchley Road",
  "Wembly Park",
  "Preston Road",
  "Northwick Park",
  "Harrow-on-the-Hill",
  "North Harrow",
  "Pinner",
  "Northwood Hills",
  "Northwood",
  "Moor Park",
  "Rickmansworth",
  "Chorelywood",
  "Chalfont & Latimer",
  "Chesham"
]

northern = [

]

stations = [
  [northern, "Northern"],
  [metropolitan, "Metropolitan"],
  [central, "Central"],
  [piccadilly, "Piccadilly"],
  [circle, "Circle"],
  [victoria, "Victoria"],
  [jubilee, "Jubilee"],
  [bakerloo, "Bakerloo"],
  [district, "District"],
  [hammersmith, "Hammersmith & City"]
]

stations.each do |pair|
  pair.first.each_with_index do |station, i|
    Station.create!(station_name: station, station_number: i+1, station_status: "Good Service")
    StationLine.create!(line: Line.where(name: pair.last).first, station: Station.last)
  end
end
