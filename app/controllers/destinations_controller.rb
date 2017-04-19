class DestinationsController < ApplicationController
    # Prevent logged out users from accessing the Destination pages
    before_action :require_user, only: [:index, :show]
    
    def new
        
    end
    
    def create
        @destination = Destination.new(params[:destination])
        
        @destination.save
        redirect_to @destination
    end
    
    def edit
        
    end
    
    def update
        
    end
    
    def index
        
    end
    
    def show
        
    end
    
    def destroy
        
    end
    
end
