class NannyJobsController < ApplicationController
  before_action :set_nanny_job, only: [:show, :edit, :update, :destroy]

  # GET /nanny_jobs
  # GET /nanny_jobs.json
  def index
    @nanny_jobs = NannyJob.all
  end

  # GET /nanny_jobs/1
  # GET /nanny_jobs/1.json
  def show
  end

  # GET /nanny_jobs/new
  def new
    # @nanny_job = NannyJob.new
    @nanny_job = current_user.nanny_jobs.build
  end

  # GET /nanny_jobs/1/edit
  def edit
  end

  # POST /nanny_jobs
  # POST /nanny_jobs.json
  def create
    # @nanny_job = NannyJob.new(nanny_job_params)
    @nanny_job = current_user.nanny_jobs.build(nanny_job_params)

    respond_to do |format|
      if @nanny_job.save
        format.html { redirect_to @nanny_job, notice: 'Nanny job was successfully created.' }
        format.json { render :show, status: :created, location: @nanny_job }
      else
        format.html { render :new }
        format.json { render json: @nanny_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nanny_jobs/1
  # PATCH/PUT /nanny_jobs/1.json
  def update
    respond_to do |format|
      if @nanny_job.update(nanny_job_params)
        format.html { redirect_to @nanny_job, notice: 'Nanny job was successfully updated.' }
        format.json { render :show, status: :ok, location: @nanny_job }
      else
        format.html { render :edit }
        format.json { render json: @nanny_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nanny_jobs/1
  # DELETE /nanny_jobs/1.json
  def destroy
    @nanny_job.destroy
    respond_to do |format|
      format.html { redirect_to nanny_jobs_url, notice: 'Nanny job was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nanny_job
      @nanny_job = NannyJob.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nanny_job_params
      params.require(:nanny_job).permit(:user, :payment, :duration, :starting, :needed, :description, :location)
    end
end
