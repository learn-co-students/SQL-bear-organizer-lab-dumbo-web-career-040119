# INSERT INTO bears (id, name, age, gender, color, temperament, alive) VALUES
# (1,"Mr. Chocolate", 20, "M", "dark brown", "calm", 0),
# (2,"Rowdy", 10, "M", "black", "intense", 1),
# (3,"Tabitha", 6, "F", "dark brown", "Nice", 1),
# (4,"Sargeant Brown", 19, "M", "Green", "Slimy", 0),
# (5,"Melissa", 13, "F", "dark brown", "goofy", 1),
# (6,"Grinch", 2, "M", "Black", "Grinchy", 1),
# (7,"Wendy", 6, "F", "Blue", "naive", 1),
# (8,null, 20, "M", "black", "aggressive", 0);


def selects_all_female_bears_return_name_and_age
  "SELECT name, age FROM bears WHERE gender LIKE 'f'"
end

def selects_all_bears_names_and_orders_in_alphabetical_order
  "SELECT name FROM bears ORDER BY name ASC"
end

def selects_all_bears_names_and_ages_that_are_alive_and_order_youngest_to_oldest
  "SELECT name, age FROM bears WHERE alive = 1 ORDER BY age ASC"
end

def selects_oldest_bear_and_returns_name_and_age
  "SELECT name, age FROM bears WHERE (age = 20 AND color = 'dark brown')"
end

def select_youngest_bear_and_returns_name_and_age
  "SELECT name, age FROM bears WHERE age = 2"
end

def selects_most_prominent_color_and_returns_with_count
  "SELECT color, COUNT(color) FROM bears WHERE color = 'dark brown'"
end

def counts_number_of_bears_with_goofy_temperaments
  "SELECT COUNT(temperament) FROM bears WHERE temperament LIKE 'goofy'"
end

def selects_bear_that_killed_Tim
  "SELECT * FROM bears WHERE name IS null"
end
