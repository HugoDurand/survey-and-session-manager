module EduevalApi
  module V1
    class Participants < Grape::API
      version 'v1', using: :path
      format :json
      prefix :api


      resource :participants do
        desc "Return list of participants"
        # Récupération de la collection de toutes les voitures grâce à ActiveRecord
        get do
          Participant.all
        end

        desc "Return a participant"
        # Récupération d'une voiture spécifique grâce au paramètre passé dans l'url
        params do
          requires :id, type: Integer, desc: "Car id"
        end
        route_param :id do
          get do
            Participant.find(params[:id])
          end
        end
      end


    end
  end
end