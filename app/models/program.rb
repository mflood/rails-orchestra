class Program < ActiveRecord::Base
    validates_presence_of :name
    validates_uniqueness_of :name
    has_many :program_compositions
    has_many :performances
end
