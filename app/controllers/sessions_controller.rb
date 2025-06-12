class SessionsController < ApplicationController
  before_action :logged_in_redirect, only: [:new, :create]
  def new
  end

  def create
    #debugger
    user = User.find_by(username: "#{params[:username]}")
    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:notice] = "Bienvenido #{params[:username]}"
      redirect_to root_path
    else
      flash[:alert] = "Usuario o contraseña invalidos, intentelo nuevamente por favor"
      redirect_to login_path
    end
  end

  def destroy
    reset_session
    flash[:notice] = "Sesion cerrada"
    redirect_to login_path
  end

  private 
  def logged_in_redirect
    if logged_in?
      flash[:alert] = "Usted ya se encuentra logueado"
      redirect_to root_path
    end
  end

end