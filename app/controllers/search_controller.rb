class SearchController < ApplicationController

  def index
    @stations = NrelService.new.get_json
  end

end
