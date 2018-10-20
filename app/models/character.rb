class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end
end

# An actor has many characters and has many shows through characters.
# A character belongs to an actor and belongs to a show.
# A show has many characters and has many actors through characters.
