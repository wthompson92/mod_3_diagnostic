class SearchController < ApplicationController

  def index
    @stations = Nrel.new
    @stations.conn
  end
end
