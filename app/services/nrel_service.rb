class NrelService
  def initialize(params)
     @zipcode = params[:zipcode]

   end

   def get_json(url)
     response = conn.get(url)
     JSON.parse(response.body, symbolize_names: true)
   end

  privte

  def conn
    @_conn = Faraday.new(:url => 'https://developer.nrel.gov/docs/transportation/alt-fuel-stations-v1/nearest/') do |faraday|
    req.params['api_key'] = '4Z1qtSr1b6WD6o4MUcWH0J4SowKe65NIaaG68K1B'
    req.params['zip'] = @zipcode
    req.params['limit'] = 10
    faraday.adapter  Faraday.default_adapter
    end
  end
end
