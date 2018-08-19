class JobsController < ApplicationController
  
    def index
        @jobs = NannyJob.all
    end

    def show
    end

    def most_recent
        #selected last 10 
        @jobs = NannyJob.all
    end

    def interested
        #get current user
        user = current_user

        #TODO: get email of the jobs creator instaed of the current user
        # user = NannyJob.user.email

        #send email
        InterestedMailer.notify(user).deliver

        message = 'A nanny is interested. #{user.fullname}'
        TwilioTextMessenger.new(message).notify_phone

        redirect_to jobs_index_path, notice: 'hmmmmm'

    end

end

