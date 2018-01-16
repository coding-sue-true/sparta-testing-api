require 'json'

class ParseJson

  attr_accessor :json_file

  def initialize(json_file)
    @json_file = JSON.parse(File.read(json_file))
  end

  def get_base_value
    @json_file['base']
  end

  def get_rates_values
    @json_file['rates'].values
  end

  def get_rates_keys
    @json_file['rates'].keys
  end

  def get_rates
    @json_file['rates']
  end

  def get_date
    @json_file['date']
  end
end
