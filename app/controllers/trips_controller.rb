class TripsController < ApplicationController
    #require user to login prior to accessing trip page
    before_action :require_user, only: [:index, :show]
    
    # WHICH @TRIP DO WE USE???
    def new
        @destination = Destination.find(params[:destination_id])
        # @trip = @destination.trips.create(trip_params)
        @trip = Trip.new
    end
    
    def show
        @destination = Destination.find(params[:destination_id])
        @trip = @destination.trips.create(trip_params)
    end
    
    # Create trip under the current destination user is on. Goes back to destination list when trip
    # is created (on button click)
    def create 
        @destination = Destination.find(params[:destination_id])
        @trip = @destination.trips.create(trip_params)
        if @trip.save
            redirect_to destination_path(@destination)
        else
            render 'new'
        end
    end
    
    def destroy
        @destination = Destination.find(params[:destination_id])
        @trip = @destination.trips.find(params[:id])
        @trip.destroy
        redirect_to destination_path(@destination)
    end
    
    
    private 
        def trip_params
            params.require(:trip).permit(:depart_date, :return_date, :depart_time, :return_time, :mode)
        end
end