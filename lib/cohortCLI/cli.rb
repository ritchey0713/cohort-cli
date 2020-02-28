class CohortCLI::CLI 
  
  def start 
    puts "Hello there!"
    puts "-------------"
    puts "Please enter a movie title below:"
    input = gets.strip.downcase
    if(input != "quit")
      @data = CohortCLI::API.get_movies(input)
      @objects = CohortCLI::Movie.all
      display_info
    else
      quit
    end
  end

  def display_info
    puts "Here is your list:"
    puts "------------------"
    @objects.each.with_index(1) {|movie, index| puts "#{index}. #{movie.title}"}

    puts "please make a selection by index number:"
    input = gets.strip.downcase
    #@movie = @objects[input.to_i - 1]
    if(input.to_i > 0)
      @movie = @objects[input.to_i - 1]
      puts "#{@movie.year}"
      display_info
    elsif (input == "quit")
      quit
    elsif (input == "menu")
      start
    else 
      puts "Oops"
      display_info
    end 
    
  end 

  def quit 
    puts "Goodbye"
  end 

end
  