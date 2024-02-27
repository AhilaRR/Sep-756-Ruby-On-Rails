require 'httparty'
require 'pp'

class CountryController < ApplicationController
  def index
    @search_text = params[:search_text] || "India"
    @countries = Country.get_searched_countries(@search_text)
  end

  def details
    @search_country_name = params[:search_country_name] || "India"
    @country = Country.get_searched_country_full_name(@search_country_name)
  end
end
