class SessionsController < ActionController::Base

    before_action :require_login, only: [:homepage]

    def new
    end

    def create
        session[:name] = params[:name]
        if session[:name].blank?
            redirect_to "/login"
        else
            redirect_to "/homepage"
        end
    end

    def destroy
        session.delete :name
        redirect_to "/"
    end

    def homepage
        @name = session[:name]
    end

    private
    def require_login
        redirect_to "/login" unless session.include? :name
    end

end