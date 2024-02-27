require 'erb'

class Country
  include HTTParty

  base_uri 'https://restcountries.com/v3.1/'
  default_params fields: 'name,capital,currencies,languages,cca2'

  def self.get_searched_countries(country)
    get("/name/#{country}")
  end

  def self.get_searched_country_full_name(country_full_name)
    url = "/name/#{country_full_name}?fullText=true"
    get(if url.include?" " then url.gsub(' ', '%20') else url end)
  end

end
