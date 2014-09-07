class Musician < ActiveRecord::Base
    has_many :composition
    validates_uniqueness_of :email
    has_and_belongs_to_many :performances
end
