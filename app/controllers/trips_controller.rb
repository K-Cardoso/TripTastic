class TripsController < ApplicationController
    #require user to login prior to accessing trip page
    before_action :require_user, only: [:index, :show]
    
    
    def create 
        @destination = Destination.find(params[:destination_id])
        @trip = @destination.trips.create(trip_params)
        redirect_to destination_path(@destination)
    end
    
    private 
        def trip_params
            params.require(:trip).permit(:depart_date, :return_date, :depart_time, :return_time, :mode)
        end
end
