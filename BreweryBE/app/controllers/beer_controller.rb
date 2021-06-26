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
        @action = "new"
    end

    def create 
        @beer = Beer.create(name: params[:beer][:name], typeBeer: params[:beer][:typeBeer], alc: params[:beer][:alc], brewery_id: params[:beer][:brewery_id])
        redirect_to @beer
    end

    def edit 
        @beer = Beer.find(params[:id])
        @breweries = Brewery.all
    end

    def update 
        @beer = Beer.find(params[:id])
        @beer.update(name: params[:beer][:name], typeBeer: params[:beer][:typeBeer], alc: params[:beer][:alc], brewery_id: params[:beer][:brewery_id])
        redirect_to @beer
    end
end