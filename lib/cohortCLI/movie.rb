class CohortCLI::Movie
  attr_accessor :title, :year, :release_year
  @@all = []

  ## set @@all = {
  #   Frank: {
  #     movies: []
  #   }
  # }

  def initialize(hash)
    hash.each {|key, value| self.send(("#{key}="), value)}
    save 
  end 

  def self.all 
    @@all
  end 

  def save 
    @@all << self
  end 

  # custom instance methods if needed
  def create_note(input)
    self.note = input
  end 

end 