class Superpower < ActiveRecord::Base
    has_many :character_superpowers
    has_many :characters, through: :character_superpowers

    validates :name, presence: true
end
