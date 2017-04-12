class DestinationsController < ApplicationController
    before_action :require_user, only: [:index, :show]
    
    def new
    end
    
    def create
        @destination = Destination.new(params[:destination])
        
        @destination.save
        redirect_to @destination
    end
end
