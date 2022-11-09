class HomeController < ApplicationController
  def index
    require 'net/http'#it is use to collect data
    require 'json'#it is used to post the data

    @url = 'https://www.airnowapi.org/aq/observation/zipCode/current/?format=application/json&zipCode=20002&distance=0&API_KEY=4A69DB25-F134-4903-B84D-200B4651F5E5'
    @uri = URI(@url)#now connect to it(api) uri uniform resorce indicator
    @response = Net::HTTP.get(@uri)#in short we are saying that get your uri indicator and get the results
    @output = JSON.parse(@response)
    #check for empty return result
    if @output.empty?
      @final_output= "Error"
    elsif !@output
      @final_output= "Error"
    else
      @final_output = @output[0]['AQI']

    end

    if @final_output == "Error"
      @api_color = "grey"
    elsif  @final_output <= 50
      @api_color = "green"
    elsif  @final_output >= 51 && @final_output <= 100
      @api_color = "yellow"
    elsif  @final_output >= 101 && @final_output <= 150
      @api_color = "orange"
    elsif  @final_output >= 151 && @final_output <= 200
      @api_color = "red"
    elsif  @final_output >= 201 && @final_output <= 300
      @api_color = "voilet"
    elsif  @final_output >= 301 && @final_output <= 500
      @api_color = "maroon"
   





    end

  end
end
