class DestinationsController < ApplicationController
    
    def new
        @destination = Destination.new
    end
    
    def create
        @destination = Destination.new(destination_params)
        if @destination.save
            redirect_to @destination
        else
            render 'new'
        end
    end
    
    # Takes you to show.html.erb for destination
    def edit
        @destination = Destination.find(params[:id])
    end
    
    # Updating a record that already exists
    def update
        @destination= Destination.find(params[:id])
        if @destination.update(destination_params)
            redirect_to @destination
        else
            render 'edit'
        end
    end
    
    def index
        @destination = Destination.all
    end
    
    def show
        @destination = Destination.find(params[:id])
    end
    
    def destroy
        @destination = Destination.find(params[:id])
        @destination.destroy
        redirect_to destinations_url
    end
end

private
    def destination_params
        params.require(:destination).permit(:country, :city)
    end
