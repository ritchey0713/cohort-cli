# environment file 
# in here loads all files needed to run our app

require "cohortCLI/version"
require "cohortCLI/cli"
require "cohortCLI/api"
require "cohortCLI/movie"

# dependencies 
require "pry"
require "httparty"


module CohortCLI
  class Error < StandardError; end
  # Your code goes here...
end
