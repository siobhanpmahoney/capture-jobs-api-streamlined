class InterviewSerializer < ActiveModel::Serializer
  attributes :id, :type, :contact, :date_invited, :date_due, :next_step, :response, :additional_notes
end
