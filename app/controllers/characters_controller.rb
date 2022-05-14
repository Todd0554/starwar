class CharactersController < ApplicationController
    before_action :characters
    def index
        
    end

    def show
        @character = @characters.find do |character|
            character[:id] == params[:id].to_i
        end
    end
end
