class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    phrase = self.catchphrase
    actor = self.name
    "#{actor} always says: #{phrase}"
  end

end ### End of Character Class
