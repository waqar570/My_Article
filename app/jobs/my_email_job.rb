class MyEmailJob < ApplicationJob
  queue_as :default

  def perform
     puts "My Name is WAQAR"
    # Do something later
    #  mail(
    #     to:  "amirali@gmail.com",
    #      subject:  'Thanks from Techscoop'
    #    )
  end
end


#TechscoopMailer.welcome_email.deliver_now