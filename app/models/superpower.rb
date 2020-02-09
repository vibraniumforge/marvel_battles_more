class Superpower < ActiveRecord::Base
    
    belongs_to :character

    validates :name, presence: true
    validates :character, presence: true

end
