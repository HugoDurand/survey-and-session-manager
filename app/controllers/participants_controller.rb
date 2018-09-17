class ParticipantsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index

    @participants = Participant.where(session: session[:Session_NumSession]).all
    @participants_new = Participant.new

    session[:NomPrenom] = params[:p]

  end


  def create
    participant = Participant.create(participant_params)
    redirect_to participants_path
  end

  private

  def participant_params

    defaults = { session: session[:Session_NumSession], client: session[:Session_Client]}
    params.require(:participant).permit(:nom, :prenom, :session, :client).reverse_merge(defaults)

  end


end