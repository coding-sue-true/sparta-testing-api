require 'httparty'
require 'json'


class SinglePostCodeService
  include HTTParty

  base_uri 'https://api.postcodes.io'

  def get_single_postcode(postcode)
    @single_postcode_data = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
  end

  def get_single_result
    @single_postcode_data['result']
  end

  def get_single_status
    @single_postcode_data['status']
  end

  def get_single_post_code
    @single_postcode_data['result']['postcode']
  end

  def get_codes
    get_single_result['codes']
  end

  def get_postcode
    get_single_result['postcode']
  end

  def get_country
    get_single_result['country']
  end

  def get_nhs_ha
    get_single_result['nhs_ha']
  end

  def get_european_electoral_region
    get_single_result['european_electoral_region']
  end

  def get_primary_care_trust
    get_single_result['primary_care_trust']
  end

  def get_region
    get_single_result['region']
  end

  def get_lsoa
    get_single_result['lsoa']
  end

  def get_msoa
    get_single_result['msoa']
  end

  def get_incode
    get_single_result['incode']
  end

  def get_outcode
    get_single_result['outcode']
  end

  def get_parliamentary_constituency
    get_single_result['parliamentary_constituency']
  end

  def get_admin_district
    get_single_result['admin_district']
  end

  def get_parish
    get_single_result['parish']
  end

  def get_admin_county
    get_single_result['admin_county']
  end

  def get_admin_ward
    get_single_result['admin_ward']
  end

  def get_ccg
    get_single_result['ccg']
  end

  def get_nuts
    get_single_result['nuts']
  end

  def get_quality
    get_single_result['quality']
  end

  def get_eastings
    get_single_result['eastings']
  end

  def get_northings
    get_single_result['northings']
  end

  def get_longitude
    get_single_result['longitude']
  end

  def get_latitude
    get_single_result['latitude']
  end

  def get_codes_admin_district
    get_codes['admin_district']
  end

  def get_codes_admin_county
    get_codes['admin_county']
  end

  def get_codes_admin_ward
    get_codes['admin_ward']
  end

  def get_codes_parish
    get_codes['parish']
  end

  def get_codes_parliamentary_constituency
    get_codes['parliamentary_constituency']
  end

  def get_codes_ccg
    get_codes['ccg']
  end

  def get_codes_nuts
    get_codes['nuts']
  end

end


# x = SinglePostCodeService.new

# puts x.get_single_postcode('ha86lh')
# puts '-------------------------'
# puts x.get_multiple_postcodes(["ha86lh", "bs85bb", "bs11dq"])
