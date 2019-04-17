class WelcomeController < ApplicationController
    
    def index
        @welcome = Welcome.new
    end
    
    def create
        @welcome = Welcome.new(welcome_params)
        @welcome.assign_attributes(:created_at => Time.zone.now)
        @welcome.save
        redirect_to welcome_index_path
    end
    
    private
    
    def welcome_params
        params.permit(:name,:email,:subject,:message,:created_at)
    end
end
