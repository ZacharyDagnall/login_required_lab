class SecretsController < ActionController::Base

    before_action :require_login

    def show

    end

    private
    def require_login
        redirect_to "/login" unless session.include? :name
    end
    
end