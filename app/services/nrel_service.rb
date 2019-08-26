class NrelService


   def get_json
     response = conn.get
     JSON.parse(response.body, symbolize_names: true)
   end

private
  def conn
    @_conn = Faraday.new(:url => 'https://developer.nrel.gov/docs/transportation/alt-fuel-stations-v1/nearest/') do |faraday|
    faraday.headers['api_key'] = 'removes'
    faraday.params['zip'] = 80501
    faraday.params['limit'] = 10
    faraday.adapter  Faraday.default_adapter
    end
  end
end
