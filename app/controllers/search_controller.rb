class SearchController < ApplicationController

  def index
    @stations = NrelService.new
    @stations.conn
  end
end
