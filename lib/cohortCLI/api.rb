# find api to 
# use set url 
# build hashes out for objs
# call custom class .new method
# send those back to our CLI 

class CohortCLI::API 
  def self.get_movies(input)
    @movies_hash = HTTParty.get("https://omdbapi.com/?apikey=f0339c2c&t=#{input}")

    if(@movies_hash["Error"])
      ## handle error
      puts "Oops can't find that movie"
    else
      movies_obj = {
        title: @movies_hash["Title"],
        year: @movies_hash["Year"],
        release_year: @movies_hash["Released"]
      }
      CohortCLI::Movie.new(movies_obj)
    end 
  end

end 
