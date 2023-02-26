class MyEmailJob < ApplicationJob
  queue_as :default

  def perform ()
    MyMailer.welcome_email.deliver_now
  end
end


#MyEmailJob.perform.deliver_now


