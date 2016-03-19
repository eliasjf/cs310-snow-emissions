require 'rake'
class UserSettingsController < ApplicationController
  def user_settings
    render template: "layouts/user_settings.html.erb"
  end

  def update
    current_user ||= User.find(session[:user_id]) if session[:user_id]

    uid = current_user.uid
    name = params[:name]
    email = params[:email]

    a = User.find_by_uid(uid)
    a.name = name

    if valid_email?(email) && valid_name?(name)
      a.email = email
      a.name = name
      a.save
      flash[:error] = 'Updated!'
      redirect_to "/user_settings"
    else
      flash[:error] = 'Invalid Name or Email provided!'
      redirect_to "/user_settings"
    end
  end

  private
  def valid_email?(email)
    @VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    @EMPTY_EMAIL_REGEX = /^$/
    (email =~ @VALID_EMAIL_REGEX || email =~ @EMPTY_EMAIL_REGEX)
  end

  private
  def valid_name?(name)
    @VALID_NAME_REGEX = /^[a-z ,.'-]+$/i
    name.present? && (name =~ @VALID_NAME_REGEX)
  end


end