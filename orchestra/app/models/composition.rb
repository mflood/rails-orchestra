class Composition < ActiveRecord::Base
    belongs_to :musician
    has_and_belongs_to_many :tags
    has_many :composition_parts
    has_many :composition_resources
end
