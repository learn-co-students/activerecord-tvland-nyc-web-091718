class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  # Write a method in the Actor class, #list_roles, that lists all of the characters that actor has.
  def full_name
    #returns the first and last name of an actor.
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    #self.characters returns an array with 1 character element.
    #test spec required the show name to be included so looped through the character array to get the show name for each character.
      self.characters.map{|c| "#{c.name} - #{c.show.name}"}
  end
end
