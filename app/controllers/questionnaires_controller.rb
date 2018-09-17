class QuestionnairesController < ApplicationController

  def index

    @questionnaire = Questionnaire.all

    end

end
