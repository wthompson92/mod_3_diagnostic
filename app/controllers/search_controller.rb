class SearchController < ApplicationController

  def index
    @stations = StationFacade.all
  end
end
