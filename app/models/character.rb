class Character < ActiveRecord::Base

    has_many :battles
    has_many :movies, through: :battles
    has_many :character_superpowers
    has_many :superpowers, through: :character_superpowers

    # accepts_nested_attributes_for :superpowers
    
    validates :name, presence: true
    validates :alias, presence: true


    def self.original_six
        Character.order(:id).limit(6)
    end

    def self.last_five
        Character.order(id: :desc).limit(5)
    end

    def self.tony
        Character.where(name: "Tony Stark")
    end

    def self.super_soldier_serum_characters
        joins(:superpowers).where('superpowers.name LIKE ?', "%Serum%")
    end

    def self.vibranium_characters
        joins(:superpowers).where('superpowers.name LIKE ?', "%Vibranium%")
    end

    def self.magic_characters
        joins(:superpowers).where('superpowers.name LIKE ?', "%Magic%")
    end

    def self.suits
        joins(:superpowers).where('superpowers.name LIKE ?', "%Suit%")
    end

    def self.steves
        Character.where("name LIKE ?", "%Steve%")
    end

    def self.flyers
        joins(:superpowers).where('superpowers.name LIKE ?', "%Flight%")
    end


    def self.infinity_stones
        joins(:superpowers).where('superpowers.name LIKE ?', "%Infinity%")
    end


    def self.shrinkers
        joins(:superpowers).where('superpowers.name LIKE ?', "%Shrinking%")
    end
   

   

end
