require_relative "config"

Borough.destroy_all

boroughs = [
  {name: "Manhattan", img_url: "manhattan.jpg"},
  {name: "Brooklyn", img_url: "brooklyn.jpg"},
  {name: "Queens", img_url: "queens.jpg"},
  {name: "Bronx", img_url: "bronx.jpg"},
  {name: "Staten Island", img_url: "staten_island.jpg"}
]

Borough.create(boroughs)

neighborhoods = [
  {name: "Astoria", borough_id: 3}
]

Neighborhood.create(neighborhoods)