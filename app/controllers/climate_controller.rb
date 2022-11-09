class ClimateController < ApplicationController
  def index
    require 'net/http'#it is use to collect data
    require 'json'#it is used to post the data
    @climate_url = 'https://api.openweathermap.org/data/2.5/weather?lat=40.34&lon=-10.99&appid=3c84996b0bec63033131044ea16e9056'
    @uri = URI(@climate_url)#now connect to it(api) uri uniform resorce indicator
    @response = Net::HTTP.get(@uri)#in short we are saying that get your uri indicator and get the results
    @output = JSON.parse(@response)
  

    if @output["weather"].empty?
      @final_output="error"
    elsif !@output["weather"]
      @final_output="error"
    else
      @final_output=@output["weather"]
    end

    puts "hello this is #{@output} and --------------#{@final_output}"
  

  end

  def chnage
    @climate = Climate.new
    @climate.save

    
  end

   
end
