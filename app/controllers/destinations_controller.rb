class DestinationsController < ApplicationController
    def new
    end
    
    def create
        render plain: params[:destination].inspect
    end
end
