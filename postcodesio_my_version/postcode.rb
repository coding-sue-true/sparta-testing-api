require 'httparty'
require 'json'

class Postcodesio
  include HTTParty

  base_uri 'https://api.postcodes.io'

  def get_single_postcode(postcode)
    JSON.parse(self.class.get("/postcodes/#{postcode}").body)
  end

  def get_multiple_postcodes(postcodes_array)
    JSON.parse(self.class.post("/postcodes/", body: { "postcodes" => postcodes_array}).body)
  end

  def single_pc
    get_single_postcode('ha86lh')
  end

  def single_pc_status
    get_single_postcode('ha86lh')['status']
  end

  def single_pc_result
    get_single_postcode('ha86lh')['result']
  end

  def single_pc_codes
    get_single_postcode('ha86lh')['result']['codes']
  end

  def multiple_pc
    get_multiple_postcodes(["ha86lh", "bs85bb", "bs11dq"])
  end

  def multiple_pc_status
    get_multiple_postcodes(["ha86lh", "bs85bb", "bs11dq"])['status']
  end


end

x = Postcodesio.new

# puts x.get_single_postcode('ha86lh')
# puts '-------------------------'
# puts x.get_multiple_postcodes(["ha86lh", "bs85bb", "bs11dq"])
