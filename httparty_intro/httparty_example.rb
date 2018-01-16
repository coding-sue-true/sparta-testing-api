require 'httparty'

response = HTTParty.get('http://bbc.co.uk/news')

# puts response.body

#to get the code RED(404) or GREEN(200)
# puts response.code


# puts response.headers
