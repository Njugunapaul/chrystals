class PrintJobsController < ApplicationController
  before_action :set_print_job, only: [:show, :edit, :update, :destroy]

  # GET /print_jobs
  # GET /print_jobs.json
  def index
    @print_jobs = PrintJob.all
    @tprintjobs=  PrintJob.sum(:quantity)
  end

  # GET /print_jobs/1
  # GET /print_jobs/1.json
  def show
    @print_jobs = PrintJob.all
    
  end

  # GET /print_jobs/new
  def new
    @print_job = PrintJob.new
  end

  # GET /print_jobs/1/edit
  def edit
  end

  # POST /print_jobs
  # POST /print_jobs.json
  def create
    @print_job = PrintJob.new(print_job_params)

    respond_to do |format|
      if @print_job.save
        format.html { redirect_to @print_job, notice: 'Print job was successfully created.' }
        format.json { render :show, status: :created, location: @print_job }
      else
        format.html { render :new }
        format.json { render json: @print_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /print_jobs/1
  # PATCH/PUT /print_jobs/1.json
  def update
    respond_to do |format|
      if @print_job.update(print_job_params)
        format.html { redirect_to @print_job, notice: 'Print job was successfully updated.' }
        format.json { render :show, status: :ok, location: @print_job }
      else
        format.html { render :edit }
        format.json { render json: @print_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /print_jobs/1
  # DELETE /print_jobs/1.json
  def destroy
    @print_job.destroy
    respond_to do |format|
      format.html { redirect_to print_jobs_url, notice: 'Print job was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_print_job
      @print_job = PrintJob.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def print_job_params
      params.require(:print_job).permit(:name, :job_id, :Description, :quantity)
    end
end
