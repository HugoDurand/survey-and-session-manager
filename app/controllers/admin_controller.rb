class AdminController < ApplicationController



  def index
    if user_signed_in?
      redirect_to '/admin/dashboard'
    end
  end

  def dashboard
  end







  private

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
