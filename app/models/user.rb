class User < ApplicationRecord

  after_create :welcome_send
  def welcome_send
    WelcomeMailer.welcome_send(self).deliver
  end

end
