require_relative "config"

Borough.destroy_all
Neighborhood.destroy_all
Lounge.destroy_all

boroughs = [
  {name: "Manhattan", img_url: "manhattan.jpg"},
  {name: "Brooklyn", img_url: "brooklyn.jpg"},
  {name: "Queens", img_url: "queens.jpg"},
  {name: "Bronx", img_url: "bronx.jpg"},
  {name: "Staten Island", img_url: "staten_island.jpg"}
]

Borough.create(boroughs)

neighborhoods = [
  {name: "Battery Park City", borough_id: 1},
  {name: "Beekman Place", borough_id: 1},
  {name: "Carnegie Hill", borough_id: 1},
  {name: "Chelsea", borough_id: 1},
  {name: "Chinatown", borough_id: 1},
  {name: "Civic Center", borough_id: 1},
  {name: "Clinton", borough_id: 1},
  {name: "East Harlem", borough_id: 1},
  {name: "East Village", borough_id: 1},
  {name: "Financial District", borough_id: 1},
  {name: "Flatiron", borough_id: 1},
  {name: "Gramercy", borough_id: 1},
  {name: "Greenwich Village", borough_id: 1},
  {name: "Hamilton Heights", borough_id: 1},
  {name: "Harlem", borough_id: 1},
  {name: "Herald Square", borough_id: 1},
  {name: "Hudson Square", borough_id: 1},
  {name: "Inwood", borough_id: 1},
  {name: "Lenox Hill", borough_id: 1},
  {name: "Lincoln Square", borough_id: 1},
  {name: "Little Italy", borough_id: 1},
  {name: "Lower East Side", borough_id: 1},
  {name: "Manhattan Valley", borough_id: 1},
  {name: "Manhattanville", borough_id: 1},
  {name: "Midtown South", borough_id: 1},
  {name: "Midtown", borough_id: 1},
  {name: "Morningside Heights", borough_id: 1},
  {name: "Murray Hill", borough_id: 1},
  {name: "NoHo", borough_id: 1},
  {name: "Roosevelt Island", borough_id: 1},
  {name: "SoHo", borough_id: 1},
  {name: "South Village", borough_id: 1},
  {name: "Stuyvesant Town", borough_id: 1},
  {name: "Sutton Place", borough_id: 1},
  {name: "Times Square", borough_id: 1},
  {name: "Tribeca", borough_id: 1},
  {name: "Tudor City", borough_id: 1},
  {name: "Turtle Bay", borough_id: 1},
  {name: "Union Square", borough_id: 1},
  {name: "Upper East Side", borough_id: 1},
  {name: "Upper West Side", borough_id: 1},
  {name: "Wall Street", borough_id: 1},
  {name: "Washington Heights", borough_id: 1},
  {name: "West Village", borough_id: 1},
  {name: "Yorkville", borough_id: 1},
  {name: "Bath Beach", borough_id: 2},
  {name: "Bay Ridge", borough_id: 2},
  {name: "Bedford Stuyvesant", borough_id: 2},
  {name: "Bensonhurst", borough_id: 2},
  {name: "Bergen Beach", borough_id: 2},
  {name: "Boerum Hill", borough_id: 2},
  {name: "Borough Park", borough_id: 2},
  {name: "Brighton Beach", borough_id: 2},
  {name: "Broadway Junction", borough_id: 2},
  {name: "Brooklyn Heights", borough_id: 2},
  {name: "Brownsville", borough_id: 2},
  {name: "Bushwick", borough_id: 2},
  {name: "Canarsie", borough_id: 2},
  {name: "Carroll Gardens", borough_id: 2},
  {name: "City Line", borough_id: 2},
  {name: "Clinton Hill", borough_id: 2},
  {name: "Cobble Hill", borough_id: 2},
  {name: "Coney Island", borough_id: 2},
  {name: "Crown Heights", borough_id: 2},
  {name: "Cypress Hills", borough_id: 2},
  {name: "Ditmas Park", borough_id: 2},
  {name: "Downtown", borough_id: 2},
  {name: "DUMBO", borough_id: 2},
  {name: "Dyker Heights", borough_id: 2},
  {name: "East Flatbush", borough_id: 2},
  {name: "East New York", borough_id: 2},
  {name: "East Williamsburg", borough_id: 2},
  {name: "Farragut", borough_id: 2},
  {name: "Flatbush", borough_id: 2},
  {name: "Flatlands", borough_id: 2},
  {name: "Fort Greene", borough_id: 2},
  {name: "Fort Hamilton", borough_id: 2},
  {name: "Fulton Ferry", borough_id: 2},
  {name: "Georgetown", borough_id: 2},
  {name: "Gerritsen Beach", borough_id: 2},
  {name: "Gowanus", borough_id: 2},
  {name: "Gravesend", borough_id: 2},
  {name: "Greenpoint", borough_id: 2},
  {name: "Highland Park", borough_id: 2},
  {name: "Homecrest", borough_id: 2},
  {name: "Kensington", borough_id: 2},
  {name: "Kings Highway", borough_id: 2},
  {name: "Manhattan Beach", borough_id: 2},
  {name: "Manhattan Terrace", borough_id: 2},
  {name: "Mapleton", borough_id: 2},
  {name: "Marine Park", borough_id: 2},
  {name: "Midwood", borough_id: 2},
  {name: "Mill Basin", borough_id: 2},
  {name: "Mill Island", borough_id: 2},
  {name: "Navy Yard", borough_id: 2},
  {name: "New Lots", borough_id: 2},
  {name: "North Side", borough_id: 2},
  {name: "Ocean Hill", borough_id: 2},
  {name: "Ocean Parkway", borough_id: 2},
  {name: "Paerdegat Basin", borough_id: 2},
  {name: "Park Slope", borough_id: 2},
  {name: "Plum Beach", borough_id: 2},
  {name: "Prospect Heights", borough_id: 2},
  {name: "Prospect Lefferts Gardens", borough_id: 2},
  {name: "Prospect Park South", borough_id: 2},
  {name: "Red Hook", borough_id: 2},
  {name: "Remsen Village", borough_id: 2},
  {name: "Rugby", borough_id: 2},
  {name: "Sea Gate", borough_id: 2},
  {name: "Sheepshead Bay", borough_id: 2},
  {name: "South Side", borough_id: 2},
  {name: "Spring Creek", borough_id: 2},
  {name: "Starrett City", borough_id: 2},
  {name: "Stuyvesant Heights", borough_id: 2},
  {name: "Sunset Park", borough_id: 2},
  {name: "Tompkins Park North", borough_id: 2},
  {name: "Vinegar Hill", borough_id: 2},
  {name: "Weeksville", borough_id: 2},
  {name: "West Brighton", borough_id: 2},
  {name: "Williamsburg", borough_id: 2},
  {name: "Windsor Terrace", borough_id: 2},
  {name: "Wingate", borough_id: 2},
  {name: "Arverne", borough_id: 3},
  {name: "Astoria", borough_id: 3},
  {name: "Astoria Heights", borough_id: 3},
  {name: "Auburndale", borough_id: 3},
  {name: "Bay Terrace", borough_id: 3},
  {name: "Bayside", borough_id: 3},
  {name: "Bayswater", borough_id: 3},
  {name: "Beechhurst", borough_id: 3},
  {name: "Bellaire", borough_id: 3},
  {name: "Belle Harbor", borough_id: 3},
  {name: "Bellerose", borough_id: 3},
  {name: "Blissville", borough_id: 3},
  {name: "Breezy Point", borough_id: 3},
  {name: "Briarwood", borough_id: 3},
  {name: "Broad Channel", borough_id: 3},
  {name: "Brookville", borough_id: 3},
  {name: "Cambria Heights", borough_id: 3},
  {name: "Clearview", borough_id: 3},
  {name: "College Point", borough_id: 3},
  {name: "Douglaston", borough_id: 3},
  {name: "Dutch Kills", borough_id: 3},
  {name: "East Elmhurst", borough_id: 3},
  {name: "Edgemere", borough_id: 3},
  {name: "Elmhurst", borough_id: 3},
  {name: "Far Rockaway", borough_id: 3},
  {name: "Floral Park", borough_id: 3},
  {name: "Flushing", borough_id: 3},
  {name: "Forest Hills", borough_id: 3},
  {name: "Forest Hills Gardens", borough_id: 3},
  {name: "Fresh Meadows", borough_id: 3},
  {name: "Glen Oaks", borough_id: 3},
  {name: "Glendale", borough_id: 3},
  {name: "Hammels", borough_id: 3},
  {name: "Hilcrest", borough_id: 3},
  {name: "Hollis", borough_id: 3},
  {name: "Holliswood", borough_id: 3},
  {name: "Howard Beach", borough_id: 3},
  {name: "Hunters Point", borough_id: 3},
  {name: "Jackson Heights", borough_id: 3},
  {name: "Jamaica", borough_id: 3},
  {name: "Jamaica Center", borough_id: 3},
  {name: "Jamaica Estates", borough_id: 3},
  {name: "Jamaica Hills", borough_id: 3},
  {name: "Kew Gardens", borough_id: 3},
  {name: "Kew Gardens Hills", borough_id: 3},
  {name: "Laurelton", borough_id: 3},
  {name: "Lefrak City", borough_id: 3},
  {name: "Lindenwood", borough_id: 3},
  {name: "Littleneck", borough_id: 3},
  {name: "Long Island City", borough_id: 3},
  {name: "Malba", borough_id: 3},
  {name: "Maspeth", borough_id: 3},
  {name: "Middle Village", borough_id: 3},
  {name: "Murray Hill", borough_id: 3},
  {name: "Neponsit", borough_id: 3},
  {name: "New Hyde Park", borough_id: 3},
  {name: "North Corona", borough_id: 3},
  {name: "Oakland Gardens", borough_id: 3},
  {name: "Ozone Park", borough_id: 3},
  {name: "Pomonok", borough_id: 3},
  {name: "Queens Village", borough_id: 3},
  {name: "Queensboro Hill", borough_id: 3},
  {name: "Ravenswood", borough_id: 3},
  {name: "Rego Park", borough_id: 3},
  {name: "Richmond Hill", borough_id: 3},
  {name: "Ridgewood", borough_id: 3},
  {name: "Rochdale", borough_id: 3},
  {name: "Rockaway Park", borough_id: 3},
  {name: "Rosedale", borough_id: 3},
  {name: "Roxbury", borough_id: 3},
  {name: "Seaside", borough_id: 3},
  {name: "Somerville", borough_id: 3},
  {name: "South Corona", borough_id: 3},
  {name: "South Jamaica", borough_id: 3},
  {name: "South Ozone Park", borough_id: 3},
  {name: "Springfield Gardens", borough_id: 3},
  {name: "St. Albans", borough_id: 3},
  {name: "Steinway", borough_id: 3},
  {name: "Sunnyside", borough_id: 3},
  {name: "Sunnyside Gardens", borough_id: 3},
  {name: "Utopia", borough_id: 3},
  {name: "Whitestone", borough_id: 3},
  {name: "Woodhaven", borough_id: 3},
  {name: "Woodside", borough_id: 3},
  {name: "Allerton", borough_id: 4},
  {name: "Bathgate", borough_id: 4},
  {name: "Baychester", borough_id: 4},
  {name: "Bedford Park", borough_id: 4},
  {name: "Belmont", borough_id: 4},
  {name: "Bronxdale", borough_id: 4},
  {name: "Bronx Park South", borough_id: 4},
  {name: "Bronx River", borough_id: 4},
  {name: "Castle Hill", borough_id: 4},
  {name: "City Island", borough_id: 4},
  {name: "Claremont Village", borough_id: 4},
  {name: "Clason Point", borough_id: 4},
  {name: "Concourse", borough_id: 4},
  {name: "Co-op City", borough_id: 4},
  {name: "Country Club", borough_id: 4},
  {name: "East Tremont", borough_id: 4},
  {name: "Eastchester", borough_id: 4},
  {name: "Edenwald", borough_id: 4},
  {name: "Edgewater Park", borough_id: 4},
  {name: "Fieldston", borough_id: 4},
  {name: "Fordham", borough_id: 4},
  {name: "High Bridge", borough_id: 4},
  {name: "Hunts Point", borough_id: 4},
  {name: "Kingsbridge", borough_id: 4},
  {name: "Kingsbridge Heights", borough_id: 4},
  {name: "Longwood", borough_id: 4},
  {name: "Marble Hill", borough_id: 4},
  {name: "Melrose", borough_id: 4},
  {name: "Morris Heights", borough_id: 4},
  {name: "Morris Park", borough_id: 4},
  {name: "Morrisania", borough_id: 4},
  {name: "Mott Haven", borough_id: 4},
  {name: "Mount Eden", borough_id: 4},
  {name: "North Riverdale", borough_id: 4},
  {name: "Norwood", borough_id: 4},
  {name: "Olinville", borough_id: 4},
  {name: "Parkchester", borough_id: 4},
  {name: "Pelham Bay", borough_id: 4},
  {name: "Pelham Gardens", borough_id: 4},
  {name: "Pelham Parkway", borough_id: 4},
  {name: "Port Morris", borough_id: 4},
  {name: "Riverdale", borough_id: 4},
  {name: "Schuylerville", borough_id: 4},
  {name: "Soundview", borough_id: 4},
  {name: "Spuyten Duyvil", borough_id: 4},
  {name: "Throgs Neck", borough_id: 4},
  {name: "Unionport", borough_id: 4},
  {name: "University Heights", borough_id: 4},
  {name: "Van Nest", borough_id: 4},
  {name: "Wakefield", borough_id: 4},
  {name: "West Farms", borough_id: 4},
  {name: "Westchester Square", borough_id: 4},
  {name: "Williamsbridge", borough_id: 4},
  {name: "Woodlawn", borough_id: 4},
  {name: "Annadale", borough_id: 5},
  {name: "Arden Heights", borough_id: 5},
  {name: "Arlington", borough_id: 5},
  {name: "Arrochar", borough_id: 5},
  {name: "Bay Terrace", borough_id: 5},
  {name: "Bloomfield", borough_id: 5},
  {name: "Bulls Head", borough_id: 5},
  {name: "Butler Manor", borough_id: 5},
  {name: "Castleton Corners", borough_id: 5},
  {name: "Charleston", borough_id: 5},
  {name: "Chelsea", borough_id: 5},
  {name: "Clifton", borough_id: 5},
  {name: "Concord", borough_id: 5},
  {name: "Dongan Hills", borough_id: 5},
  {name: "Egbertville", borough_id: 5},
  {name: "Elm Park", borough_id: 5},
  {name: "Eltingville", borough_id: 5},
  {name: "Emmerson Hill", borough_id: 5},
  {name: "Fox Hills", borough_id: 5},
  {name: "Graniteville", borough_id: 5},
  {name: "Grant City", borough_id: 5},
  {name: "Grasmere", borough_id: 5},
  {name: "Great Kills", borough_id: 5},
  {name: "Greenridge", borough_id: 5},
  {name: "Grymes Hill", borough_id: 5},
  {name: "Heartland Village", borough_id: 5},
  {name: "Howland Hook", borough_id: 5},
  {name: "Huguenot", borough_id: 5},
  {name: "Lighthouse Hill", borough_id: 5},
  {name: "Livingston", borough_id: 5},
  {name: "Manor Heights", borough_id: 5},
  {name: "Mariner's Harbor", borough_id: 5},
  {name: "Midland Beach", borough_id: 5},
  {name: "New Brighton", borough_id: 5},
  {name: "New Dorp", borough_id: 5},
  {name: "New Dorp Beach", borough_id: 5},
  {name: "New Springville", borough_id: 5},
  {name: "Oakwood", borough_id: 5},
  {name: "Old Place", borough_id: 5},
  {name: "Old Town", borough_id: 5},
  {name: "Park Hill", borough_id: 5},
  {name: "Pleasant Plains", borough_id: 5},
  {name: "Port Ivory", borough_id: 5},
  {name: "Port Richmond", borough_id: 5},
  {name: "Prince's Bay", borough_id: 5},
  {name: "Randall Manor", borough_id: 5},
  {name: "Richmond Town", borough_id: 5},
  {name: "Richmond Valley", borough_id: 5},
  {name: "Rosebank", borough_id: 5},
  {name: "Rossville", borough_id: 5},
  {name: "Sandy Ground", borough_id: 5},
  {name: "Shore Acres", borough_id: 5},
  {name: "Silver Lake", borough_id: 5},
  {name: "South Beach", borough_id: 5},
  {name: "St. George", borough_id: 5},
  {name: "Stapleton", borough_id: 5},
  {name: "Sunnyside", borough_id: 5},
  {name: "Todt Hill", borough_id: 5},
  {name: "Tompkinsville", borough_id: 5},
  {name: "Tottenville", borough_id: 5},
  {name: "Travis", borough_id: 5},
  {name: "Ward Hill", borough_id: 5},
  {name: "West Brighton", borough_id: 5},
  {name: "Westerleigh", borough_id: 5},
  {name: "Willowbrook", borough_id: 5},
  {name: "Woodrow", borough_id: 5},
]

Neighborhood.create(neighborhoods)

lounges = [
  {name: "Dandana", address: "42-21 Broadway", neighborhood_id: 124, img_url: "dandana.jpg", hours: "4pm - 4am", style: "modern", food: "true", alcohol: "true", music: "DJ" },
  {name: "Jasmine Lounge", address: "25-50 Steinway St", neighborhood_id: 124, img_url: "jasmine.jpg", hours: "24 hours", style: "traditional", food: "false", alcohol: "false", music: "none"},
  {name: "La Nuit", address: "1134 1st Ave", neighborhood_id: 40, img_url: "la_nuit.jpg", hours: "4pm - 2am", style: "modern", food: "true", alcohol: "true", music: "DJ"},
  {name: "Layali Dubai", address: "24-17 Steinway St", neighborhood_id: 124, img_url: "layali_dubai.jpg", hours: "4pm - 4am", style: "traditional", food: "true", alcohol: "false", music: "live music"},
  {name: "Mijana", address: "23-66 Steinway St", neighborhood_id: 124, img_url: "mijana.jpg", hours: "6pm- 4am", style: "traditional", food: "true", alcohol: "true", music: "live music"}
]

Lounge.create(lounges)
