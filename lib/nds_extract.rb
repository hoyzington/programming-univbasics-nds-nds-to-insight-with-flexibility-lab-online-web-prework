require 'directors_database'


      # A hash that includes :director_name as a key (INDIVIDUAL DIRECTOR)

def movie_with_director_name(director_name, movies_coll)
  result = {}
  i = 0
  while i < x.size do
    new_movie = { 
      :title => movies_coll[:title],
      :worldwide_gross => movie_data[:worldwide_gross],
      :release_year => movie_data[:release_year],
      :studio => movie_data[:studio],
      :director_name => director_name
    }
    i += 1
  end
  result
end


      # An array

def movies_with_director_key(name, movies_collection)
  result = []
  i = 0
  while i < x.size do
    movie_with_director_name(director_name, movie_data)
    i += 1
  end
  
    # GOAL:   For each Hash in an Array (movies_collection), provide a collection
  #         of movies and a directors name to the movie_with_director_name method
  #         and accumulate the returned Array of movies into a new Array that's
  #         returned by this method.
  #
  # INPUT:  (name), a director's name, and (movies_collection), an AoH where
  #         each Hash represents a movie
  #
  # RETURN: AoH where each Hash represents a movie; however, they should all have
  #         a :director_name key. This addition can be done by using the provided
  #         movie_with_director_name method
  
  result
end


      # An AoA

def movies_with_directors_set(source)
  result = []
  i = 0
  while i < x.size do
    
    i += 1
  end
  
  # GOAL:   For each director, find their :movies Array and put it in a new Array
  #
  # INPUT:  (source) An AoH containing director info incl. :name and :movies
  #
  # RETURN: AoA containing all of a director's movies. Each movie will need
  #         to have a :director_name key added to it.
  
  result
end


      # "Flattens" Arrays of Arrays so: [[1,2], [3,4,5],] => [1,2,3,4,5]

def flatten_a_o_a(aoa)
  result = []
  i = 0
  while i < aoa.length do
    k = 0
    while k < aoa[i].length do        # DON'T CHANGE!
      result << aoa[i][k]
      k += 1
    end
    i += 1
  end
  result
end


      # A hash that includes :director_name as a key (ALL DIRECTORS)

def movies_with_director_names(director_name, movie_data)
  result = {}
  i = 0
  while i < x.size do
    
    i += 1
  end
  result
end


      # A hash of each studio's earnings for all movies

def gross_per_studio(collection)
  result = {}
  i = 0
  while i < x.size do
    
    i += 1
  end
  
  # GOAL:   Given an AoH where each Hash is a movie, return a Hash that includes
  #         the total worldwide_gross of all the movies from each studio.
  #
  # INPUT:  (collection) AoH where each Hash represents a movie
  #
  # RETURN: Hash where the keys are the studios and the values are the sum of
  #         all the worldwide_gross numbers for every movie in the input Hash
  
  result
end



#         ----------------    MAIN METHOD    --------------------
# Don't edit this code! See-saw to make the previous methods work with these 
# You'll have to "see-saw" to get this to work!


def studios_totals(nds)
  a_o_a_movies_with_director_names = movies_with_directors_set(nds)
  movies_with_director_names = flatten_a_o_a(a_o_a_movies_with_director_names)
  return gross_per_studio(movies_with_director_names)
end
