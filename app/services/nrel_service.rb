class NrelService
  def initialize(params)
     @zipcode = params[:zipcode]
     @amount = params[:amount]
     @email = params[:email]
   end
  def conn
  @_conn = Faraday.new(:url => 'https://developer.nrel.gov/docs/transportation/alt-fuel-stations-v1/nearest/') do |faraday|
    req.params['api_key'] = '4Z1qtSr1b6WD6o4MUcWH0J4SowKe65NIaaG68K1B'
     req.params['zip'] = @zipcode
     req.params['limit'] = 10
    faraday.adapter  Faraday.default_adapter
    binding.pry
  end
end
