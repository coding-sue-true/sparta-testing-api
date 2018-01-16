require_relative 'services/single_post_code.rb'
require_relative 'services/multiple_post_code.rb'

class Postcodesio

  def single_postcode_service
    SinglePostCodeService.new
  end

  def multiple_postcodes_service
    MultiplePostCodeService.new
  end

end




























# x = Postcodesio.new

# x.single_postcode_service.get_single_postcode('ha86lh')
# '--------------------------'
# x.multiple_postcode_service.get_multiple_postcodes(["ha86lh", "bs85bb", "bs11dq"])
# puts '-------------------------'
# puts x.get_multiple_postcodes(["ha86lh", "bs85bb", "bs11dq"])

# x.single_postcode_service.print_results
