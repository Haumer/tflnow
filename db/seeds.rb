# destroy all lines, branches and stations
Line.destroy_all
Station.destroy_all
Branch.destroy_all

# Lines
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

# Branches
branches = [
  {
    line_name: "Central",
    branches: [
      {
        stations: [
          "West Acton",
          "Ealing Broadway"
        ],
        start: "North Acton"
      },
      {
        stations: [
          "Wanstead",
          "Redbridge",
          "Gants Hill",
          "Newbury Park",
          "Barkingside",
          "Fairlop",
          "Hainault",
          "Grange Hill",
          "Chigwell",
          "Roding Valley"
        ],
        start: "Leytonstone",
        link: "Woodford"
      }
    ]
  },
  {
    line_name: "Piccadilly",
    branches: [
      {
        stations: [
          "Heathrow Terminal 4",
          "Ealing Broadway"
        ],
        start: "Hatton Cross",
      }
    ]
  },
  {
    line_name: "District",
    branches: [
      {
        stations: [
          "Gunnersbury",
          "Kew Gardens",
          "Richmond"
        ],
        start: "Turnham Green",
      },
      {
        stations: [
          "West Brompton",
          "Fulham Broadway",
          "Parsons Green",
          "Putney Bridge",
          "East Putney",
          "Southfields",
          "Wimbledon Park",
          "Wimbledon"
        ],
        start: "Earl's Court"
      },
      {
        stations: [
          "Kensington Olympia"
        ],
        start: "Earl's Court"
      },
      {
        stations: [
          "High Street Kensington",
          "Notting Hill",
          "Bayswater",
          "Paddington",
          "Edgeware Road"
        ],
        start: "Earl's Court"
      }
    ]
  },
  {
    line_name: "Northern",
    branches: [
      {
        stations: [
          "Elephant & Castle",
          "Borough",
          "London Bridge",
          "Monument",
          "Moorgate",
          "Old Street",
          "Angel"
        ],
        start: "Kennington",
        link: "Euston"
      },
      {
        stations: [
          "Chalk Farm",
          "Belize Park",
          "Hampstead",
          "Golders Green",
          "Brent Cross",
          "Hendon Central",
          "Colindale",
          "Burnt Oak",
          "Edgeware"
        ],
        start: "Cambden Town",
      },
      {
        stations: [
          "Mill Hill East"
        ],
        start: "Finchley Central"
      }
    ]
  },
  {
    line_name: "Metropolitan",
    branches: [
      {
        stations: [
          "West Harrow",
          "Raynors Lane",
          "Eastcote",
          "Ruislip Manor",
          "Ruislip",
          "Ickenham",
          "Hillingdon",
          "Uxbridge"
        ],
        start: "Harrow-on-the-Hill"
      },
      {
        stations: [
          "Croxley",
          "Watford"
        ],
        start: "Moor Park"
      },
      {
        stations: [
          "Amersham"
        ],
        start: "Chalfont & Latimer"
      }
    ]
  }
]

# Stations
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
  "Heathrow Terminal 1,2,3",
  "Heathrow Terminal 5"
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
  "High Barnet",
  "Totterige & Whetstone",
  "Woodside Park",
  "West Finchley",
  "Finchley Central",
  "East Finchley",
  "Highgate",
  "Archway",
  "Tufnell Park",
  "Kentish Town",
  "Cambden Town",
  "Mornington Cresent",
  "Euston",
  "Warren Street",
  "Goodge Street",
  "Tott Court Road",
  "Leicester Square",
  "Charing Cross",
  "Embankment",
  "Waterloo",
  "Kennington",
  "Oval",
  "Stockwell",
  "Clapham North",
  "Clapham Common",
  "Clapham South",
  "Balham",
  "Tooting Bec",
  "Tooting Broadway",
  "Colliers Wood",
  "South Wimbledon",
  "Morden"
]

# combined Station and line
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

puts ">>>>>Starting Lines"
lines.each do |line|
  puts "Creating Line: #{line[1]}"
  Line.create!(color: line.last, line_id: line.first, name: line[1])
end

puts ">>>>>Starting Stations"
stations.each do |pair|
  pair.first.each_with_index do |station, i|
    if Station.find_by_name(station).nil?
      created_station = Station.create!(name: station, status: "Good Service")
      puts "Creating Station: #{created_station.name}"
      StationLine.create!(line: Line.where(name: pair.last).first, station: Station.find_by_name(station), position: i + 1)
    else
      StationLine.create!(line: Line.where(name: pair.last).first, station: Station.find_by_name(station), position: i + 1)
    end
  end
end

puts ">>>>>Starting Branches"
branches.each do |branch_hash|
  line = Line.find_by_name(branch_hash[:line_name])
  puts "Starting #{line.name} branches"
  starting_position = line.station_lines.order(position: :asc).last.position
  branch_hash[:branches].each_with_index do |branch, index|
    starting_branch = Branch.create!(station: Station.find_by_name(branch[:start]))
    puts "Started #{starting_branch.station.name} Branch with id: #{index + 1}"
    link_branch = Branch.create!(station: Station.find_by_name(branch[:link]), link: true) unless branch[:link].nil?
    puts "#{starting_branch.station.name} ends in #{link_branch.station.name}" if link_branch
    branch[:stations].each do |branch_station|
      station = Station.find_by_name(branch_station).nil? ? Station.create!(name: branch_station, status: "Good Service") : Station.find_by_name(branch_station)
      StationLine.create!(
        line: line,
        station: station,
        position: starting_position += 1,
        branch: true,
        branch_number: index + 1
      )
    end
  end
end
