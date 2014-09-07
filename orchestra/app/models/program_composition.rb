class ProgramComposition < ActiveRecord::Base
  belongs_to :program_id
  belongs_to :composition_id
  belongs_to :interval_id
  belongs_to :interval
  belongs_to :program
  belongs_to :composition
end
