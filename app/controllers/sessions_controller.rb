class SessionsController < ApplicationController
  def index
    @sessions = Session.all
  end

  def new
    @sessions_new = Session.new
  end

  def edit

    @session_edit = Session.find(params[:id])
  end

  def update

    @session_update = Session.find(params[:id])
    if @session_update.update_attributes(session_params)
      redirect_to sessions_path
    else
      render 'edit'
    end
  end




def create
  session = Session.create(session_params)
  redirect_to sessions_path
end

  def session_params


    params.require(:session).permit(:num_session, :intervenant, :date_debut, :date_fin, :id_questionnaire, :id_client)

  end

end
