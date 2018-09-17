class HomeController < ApplicationController

  def index


    if params[:session]

      @sessions = Session.where(num_session: params[:session]).first

      if @sessions != nil
        session[:Session_NumSession] = @sessions.num_session
        session[:Session_Intervenant] = @sessions.intervenant
        session[:Session_Questionnaire] = @sessions.id_questionnaire
        session[:Session_Client] = @sessions.id_client

        redirect_to participants_path
      else

        flash.now[:notice] = "Cette Session n'existe pas"

      end

    end


  end
end
