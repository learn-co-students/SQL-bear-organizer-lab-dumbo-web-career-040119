# Since this is a ruby files we need to write our queries as strings...

def selects_all_female_bears_return_name_and_age
  "SELECT name, age FROM bears WHERE gender = 'F';"
  # Put what we want to return after SELECT as that is what we are selecting.
  # WHERE is for the conditional.
end

def selects_all_bears_names_and_orders_in_alphabetical_order
  "SELECT name FROM bears ORDER BY name ASC;"
  # By default strings ordered in ASC order will be alphabetical.
end

def selects_all_bears_names_and_ages_that_are_alive_and_order_youngest_to_oldest
  "SELECT name, age FROM bears WHERE alive = 1 ORDER BY age ASC;"
  # For boolean values, 1 = true and 0 = false.
end

def selects_oldest_bear_and_returns_name_and_age
  "SELECT name, age FROM bears ORDER BY age DESC LIMIT 1;"
  # ORDER BY age DESC will return all bears in order from oldest to youngest
  # To get only the first one, put LIMIT 1 at the end to just get 1 bear.
end

def select_youngest_bear_and_returns_name_and_age
  "SELECT name, age FROM bears ORDER BY age ASC LIMIT 1;"
  # This is the same as above, but to start with youngest we need ASC order.
end

def selects_most_prominent_color_and_returns_with_count
  "SELECT color, count(color) FROM bears
  GROUP BY color
  ORDER BY count(color) DESC LIMIT 1;"
  # First SELECT color and the count of each color FROM bears...
  # Group them by their color, then...
  # Order them by the count of color with the highest amount first (DESC) w/
  # limit 1 b/c we only want one color.
end

def counts_number_of_bears_with_goofy_temperaments
  "SELECT count(temperament) FROM bears WHERE temperament = 'goofy';"
  # We only want the count number, so SELECT count(temperament) for which
  # their temperament is equal to "goofy".
end

def selects_bear_that_killed_Tim
  "SELECT * FROM bears WHERE name IS NULL;"
  # Since we want all the info available for the bear that killed tim we need
  # to use SELECT * to select all info.
end


# (1,"Mr. Chocolate", 20, "M", "dark brown", "calm", 0),
# (2,"Rowdy", 10, "M", "black", "intense", 1),
# (3,"Tabitha", 6, "F", "dark brown", "Nice", 1),
# (4,"Sargeant Brown", 19, "M", "Green", "Slimy", 0),
# (5,"Melissa", 13, "F", "dark brown", "goofy", 1),
# (6,"Grinch", 2, "M", "Black", "Grinchy", 1),
# (7,"Wendy", 6, "F", "Blue", "naive", 1),
# (8,null, 20, "M", "black", "aggressive", 0);
