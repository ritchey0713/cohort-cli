class CohortCLI::CLI 
  
  #start shoulld greet user, maybe give desc 
  # get data from scraper/api file 
  #create new custom objs
  # all inside start method

  def start 
    puts "Hello there!"
    puts "GETTING DATA FROM API... PLEASE WAIT"
    puts "CREATING NEW OBJS"
    display_info
  end

  def display_info
    puts "please make selection:"
    input = gets.strip.downcase
    
    if input == "actors"
      puts "============ACTORS LIST============"
      puts "LIST OF ACTORS/OBJS"
      display_info
    elsif input == "movies" 
      puts "============MOVIES LIST============"
      puts "LIST OF MOVIES/OBJS"
      display_info
    else 
      quit
    end 
  end 

  # deal with inputs (loop to keep asking to get new info )
  # EX. while input != "exit" do 
  # display a list of something, or give examples of what we expect as input  
  # get user input 
  # depending on what we get, do something 
  # condition to check input for good value 
  # else tell them try again

  def quit 
    puts "Goodbye"
  end 
end
  