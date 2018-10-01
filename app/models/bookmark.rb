class Bookmark < ApplicationRecord
  belongs_to :user
  belongs_to :company, optional: true
  belongs_to :job, optional: true
end
