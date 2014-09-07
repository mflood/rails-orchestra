class Position < ActiveRecord::Base
  belongs_to :musician_id
  belongs_to :ensemble_id
  belongs_to :role_id
end
