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
end

