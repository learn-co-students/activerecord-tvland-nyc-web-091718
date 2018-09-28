class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    [first_name, last_name].join(" ")
  end

  def list_roles
    name = self.characters.first.name
    show = self.shows.first.name
    "#{name} - #{show}"
  end

end ### End of Actor Class
