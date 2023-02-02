#### Acquire ####
food_bank <-
  # Each package is associated with a unique id  found in the "For 
  # Developers" tab of the relevant page from Open Data Toronto
  # https://open.toronto.ca/dataset/toronto-s-dashboard-key-indicators/
  list_package_resources(c6d64e9b-f85a-4084-be14-60cf18509203"") |>
  get_resource()