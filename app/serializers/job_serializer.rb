class JobSerializer < ActiveModel::Serializer
  attributes :id, :title, :date_published, :contents, :museId, :location, :level, :category, :date_saved, :overall_active_status, :date_applied, :application_response_status, :interview_invite, :offer_status
end
