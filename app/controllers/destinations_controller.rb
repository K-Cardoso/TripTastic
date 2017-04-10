class DestinationsController < ApplicationController
    def new
    end
    
    def create
        @destination = Destination.new(params[:destination])
        
        @destination.save
        redirect_to @destination
    end
end
