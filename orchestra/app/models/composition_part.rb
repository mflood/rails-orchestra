class CompositionPart < ActiveRecord::Base
    belongs_to :composition
    has_and_belongs_to_many :roles
end
