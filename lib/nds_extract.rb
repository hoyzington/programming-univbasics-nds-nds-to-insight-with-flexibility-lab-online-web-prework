require 'directors_database'


      # Convert ONE movie hash to one with :director_name as a key

def movie_with_director_name(director, movie)
  result = { 
    :title => movie[:title],
    :worldwide_gross => movie[:worldwide_gross],    # DON'T CHANGE!
    :release_year => movie[:release_year],
    :studio => movie[:studio],
    :director_name => director
    }
  result
end


      # An AoH with all of ONE director's movies

def movies_with_director_key(director, movie_collection)
  result = []
  i = 0
  while i < movie_collection.size do
    movie = movie_collection[i]
    result[i] = movie_with_director_name(director, movie)
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


      # An AoA that includes ALL DIRECTORS

def movies_with_directors_set(nds)
  result = []
  i = 0
  while i < nds.size do
    result[i] = movies_with_director_key(director, movie_collection)
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


      # A hash of each studio's earnings for all movies

def gross_per_studio(collection)
  result = {}
  i = 0
  while i < collection.size do
    studio = collection[i][:studio]
    total_earnings = collection[i][:worldwide_gross]
    if !result[studio]
      result[studio] = total_earnings
    else
      result[studio] += total_earnings
    end
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
