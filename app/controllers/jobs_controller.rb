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

        #send email
        InterestedMailer.notify(user).deliver

        redirect_to jobs_index_path, notice: 'hmmmmm'

    end

end

