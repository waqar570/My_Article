class MyMailer < ApplicationMailer
    def welcome_email
        #@article = article
        mail(to: 'amir@gmail.com', subject: 'Welcome to My Awesome Site')
        #puts "Thanks from Techscoop"
        # from:     -> { waqarkhokhar570@gmail.com } 
        # default to:   -> { @article.author_email}     
    end
end

  