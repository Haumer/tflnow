# destroy all lines, branches and stations
Line.destroy_all
Station.destroy_all
Branch.destroy_all

# Lines
lines_info = [
  ["bakerloo", "Bakerloo", "#b25f00"],                    # done
  ["central", "Central", "#f12d11"],                      # done
  ["circle", "Circle", "#ffd401"],                        # done
  ["district", "District", "#00853a"],                    # done
  ["dlr", "DLR", "#00b1b1"],                              # done - no stations
  ["hammersmith-city", "Hammersmith & City", "#f5859f"],  # done
  ["jubilee", "Jubilee", "#959ca1"],                      # done
  ["london-overground", "London Overground", "#f6800b"],  # done - no stations
  ["metropolitan", "Metropolitan", "#99005e"],            # done
  ["northern", "Northern", "#252122"],                    # done
  ["piccadilly", "Piccadilly", "#1a3c96"],                # done
  ["tfl-rail", "TfL Rail", "#5d75b5"],                    # done
  ["victoria", "Victoria", "#009cdf"],                    # done
  ["waterloo-city", "Waterloo & City", "#81cebc"]         # done
]

# Branches
lines = [
  {
    color: "#81cebc",
    line_name: "Waterloo & City",
    line_slug: "waterloo-city",
    line_color: "#81cebc",
    branches: [
      {
        branch: "main",
        stations: [
          "Waterloo",
          "Bank"
        ],
        start: "Waterloo",
      }
    ]
  },
  {
    color: "#009cdf",
    line_name: "Victoria",
    line_slug: "victoria",
    line_color: "#009cdf",
    branches: [
      {
        branch: "main",
        stations: [
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
        ],
        start: "Walthamstow Central",
      }
    ]
  },
  {
    color: "#5d75b5",
    line_name: "TfL Rail",
    line_slug: "tfl-rail",
    line_color: "#5d75b5",
    branches: [
      {
        branch: "main",
        stations: [

        ],
        start: "",
      }
    ]
  },
  {
    color: "#f6800b",
    line_name: "London Overground",
    line_slug: "london-overground",
    line_color: "#f6800b",
    branches: [
      {
        branch: "main",
        stations: [

        ],
        start: "",
      }
    ]
  },
  {
    color: "#959ca1",
    line_name: "Jubilee",
    line_slug: "jubilee",
    line_color: "#959ca1",
    branches: [
      {
        branch: "main",
        stations: [
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
        ],
        start: "Stanmore",
      }
    ]
  },
  {
    color: "#f5859f",
    line_name: "Hammersmith & City",
    line_slug: "hammersmith-city",
    line_color: "#f5859f",
    branches: [
      {
        branch: "main",
        stations: [
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
        ],
        start: "Barking",
      }
    ]
  },
  {
    color: "#00b1b1",
    line_name: "DLR",
    line_slug: "dlr",
    line_color: "#00b1b1",
    branches: [
      {
        branch: "main",
        stations: [

        ],
        start: "",
      }
    ]
  },
  {
    color: "#00853a",
    line_name: "District",
    line_slug: "district",
    line_color: "#00853a",
    branches: [
      {
        branch: "main",
        stations: [
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
        ],
        start: "Upminster",
      },
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
    color: "#ffd401",
    line_name: "Circle",
    line_slug: "circle",
    line_color: "#ffd401",
    branches: [
      {
        branch: "main",
        stations: [
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
        ],
        start: "Hammersmith",
      }
    ]
  },
  {
    color: "#b25f00",
    line_name: "Bakerloo",
    line_slug: "bakerloo",
    line_color: "#b25f00",
    branches: [
      {
        branch: "main",
        stations: [
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
        ],
        start: "Harrow & Wealdstone",
      }
    ]
  },
  {
    color: "#f12d11",
    line_name: "Central",
    line_slug: "central",
    line_color: "#f12d11",
    branches: [
      {
        stations: [
          "West Acton",
          "Ealing Broadway"
        ],
        start: "North Acton"
      },
      {
        start: "Eping",
        branch: "main",
        stations: [
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
    color: "#1a3c96",
    line_name: "Piccadilly",
    line_slug: "piccadilly",
    line_color: "#1a3c96",
    branches: [
      {
        branch: "main",
        stations: [
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
        ],
        start: "Cockfosters"
      },
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
    color: "#252122",
    line_name: "Northern",
    line_slug: "northern",
    line_color: "#252122",
    branches: [
      {
        branch: "main",
        stations: [
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
        ],
        start: "High Barnet"
      },
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
    color: "#99005e",
    line_name: "Metropolitan",
    line_slug: "metropolitan",
    line_color: "#99005e",
    branches: [
      {
        branch: "main",
        stations: [
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
        ],
        start: "Aldgate"
      },
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

lines.each do |line|
  # create Line
  created_line = Line.create!(
    name: line[:line_name],
    slug: line[:line_slug],
    color: line[:color]
  )
  line[:branches].each do |branch|
    # create Branch
    type = branch[:branch] unless branch[:branch].nil?
    created_branch = Branch.create!(
      line: created_line,
      link: branch[:start],
      branch_type: type
    )
    branch[:stations].each_with_index do |station, index|
      # create Stations and StationLine
      if Station.find_by_name(station).nil?
        created_station = Station.create!(
          name: station,
          status: "Good Service"
        )
        puts "Creating Station: #{created_station.name}"
        StationLine.create!(
          branch: created_branch,
          station: created_station,
          position: index + 1
        )
      else
        StationLine.create!(
          branch: created_branch,
          station: Station.find_by_name(station),
          position: index + 1
        )
      end
    end
  end
end

# puts ">>>>>Starting Lines"
# lines.each do |line|
#   puts "Creating Line: #{line[1]}"
#   Line.create!(color: line.last, line_id: line.first, name: line[1])
#   Branch.create!()
# end

# puts ">>>>>Starting Stations"
# stations.each do |pair|
#   pair.first.each_with_index do |station, i|
#     if Station.find_by_name(station).nil?
#       created_station = Station.create!(name: station, status: "Good Service")
#       puts "Creating Station: #{created_station.name}"
#       StationLine.create!(line: Line.where(name: pair.last).first, station: Station.find_by_name(station), position: i + 1)
#     else
#       StationLine.create!(line: Line.where(name: pair.last).first, station: Station.find_by_name(station), position: i + 1)
#     end
#   end
# end

# puts ">>>>>Starting Branches"
# branches.each do |branch_hash|
#   line = Line.find_by_name(branch_hash[:line_name])
#   puts "Starting #{line.name} branches"
#   starting_position = line.station_lines.order(position: :asc).last.position
#   branch_hash[:branches].each_with_index do |branch, index|
#     starting_branch = Branch.create!(station: Station.find_by_name(branch[:start]))
#     puts "Started #{starting_branch.station.name} Branch with id: #{index + 1}"
#     link_branch = Branch.create!(station: Station.find_by_name(branch[:link]), link: true) unless branch[:link].nil?
#     puts "#{starting_branch.station.name} ends in #{link_branch.station.name}" if link_branch
#     branch[:stations].each do |branch_station|
#       station = Station.find_by_name(branch_station).nil? ? Station.create!(name: branch_station, status: "Good Service") : Station.find_by_name(branch_station)
#       BranchLine.create!(
#         line: line,
#         station: station,
#         position: starting_position += 1,
#         branch: true,
#         branch_number: index + 1
#       )
#     end
#   end
# end
