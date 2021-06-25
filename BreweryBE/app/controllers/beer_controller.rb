class BeerController < ApplicationController
    def index 
        @beers = Beer.all 
    end

    def show
        @beer = Beer.find(params[:id])
    end

    def new 
        @beer = Beer.new
        @breweries = Brewery.all
    end
end