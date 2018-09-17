module EduevalApi
  class Base < Grape::API
    mount EduevalApi::V1::Participants
    mount EduevalApi::V1::Questionnaires
  end
end