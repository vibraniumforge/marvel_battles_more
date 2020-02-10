class CharacterSuperpower < ActiveRecord::Base
  belongs_to :character
  belongs_to :superpower
end
