class SessionsController < ApplicationController
    before_action :logged_in_redirect, only: [:new, :create]
    def new
        
    end

    def create
        user = User.find_by(username: params[:session][:username].downcase)
        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id
            flash[:success] = "Yujuuu bienvenida #{user.username}"
            redirect_to root_path
        else
            flash.now[:error] = "Te has equivocado en algo ..."
            render 'new'
        end
    end

    def destroy
        session[:user_id] = nil
        flash[:success] = "¡¡Vuelve pronto porfaaa!!"
        redirect_to login_path
    end

    private
    def logged_in_redirect
        if logged_in?
            flash[:error] = "Ya estás logeado"
            redirect_to root_path
        end
    end
    
    
end