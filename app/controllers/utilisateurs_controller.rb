class UtilisateursController < ApplicationController


  def index
    @utilisateurs = User.all

  end


  def new

    @utilisateurs_new = User.new

  end

  def show

    @utilisateurs_show = User.find(params[:id])

  end

  def edit
    @utilisateurs_edit = User.find(params[:id])
  end

private
  def user_params

    params.require(:users).permit(:nom, :prenom, :email, :encrypted_password)

  end



  def resource_name
    :user
  end
  helper_method :resource_name

  def resource
    @resource ||= User.new
  end
  helper_method :resource

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
  helper_method :devise_mapping

  def resource_class
    User
  end
  helper_method :resource_class





end
