class Performance < ActiveRecord::Base
  belongs_to :ensemble_id
  belongs_to :location_id
  belongs_to :performance_type_id
  belongs_to :program_id
end
