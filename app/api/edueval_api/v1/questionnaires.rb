module EduevalApi
  module V1
    class Questionnaires < Grape::API
      version 'v1', using: :path
      format :json
      prefix :api


      resource :questionnaires do
        desc "Return list of questionnaires"
        # Récupération de la collection de toutes les voitures grâce à ActiveRecord
        get do
          Questionnaire.all
        end

        desc "Return a questionnaire"
        # Récupération d'une voiture spécifique grâce au paramètre passé dans l'url
        params do
          requires :id, type: Integer, desc: "Questionnaire id"
        end
        route_param :id do
          get do
            Questionnaire.find(params[:id])
          end
        end
      end


    end
  end
end