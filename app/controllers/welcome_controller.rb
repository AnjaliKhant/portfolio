class WelcomeController < ApplicationController
    
    def index
        @welcome = Welcome.new
    end
    
    def create
    end
    
    private
    
    def welcome_params
        params.require(:welcome).permit(:name,:email,:subject,:message,:created_at)
    end
end
