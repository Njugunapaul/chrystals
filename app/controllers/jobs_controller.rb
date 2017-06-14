class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]

  # GET /jobs
  # GET /jobs.json
  def complete
      job.quantity - job.completed
  end

  def index
    @jobs = Job.all

    # print  Jobs  Total
    #@sinprintjobs = PrintJob.where(:job_id => @job.id).sum(:quantity)
    #@jobs_complete = diffrence [:Job.quantity ]- [:Job.completed]

    #@completepercent = <%=job_completed / job_completed %
  end

  # GET /jobs/1
  # GET /jobs/1.json
  def show
    @jobs = Job.find(params[:id])
    @jobss = Job.all

    @print_jobs = PrintJob.where(:job_id => @job.id)
    #@sinprintjobs=  PrintJob.sum(:quantity)
    @sinprintjobs = PrintJob.where(:job_id => @job.id).sum(:quantity)
  #  @percompe =  PrintJob.where(:job_id => @job.id) -> (@sinprintjobs / @job.quantity)
      @total_prints =  PrintJob.where(:job_id => @job.id).count
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @job }
    end
  end

  # GET /jobs/new
  def new
    @job = Job.new
  end

  # GET /jobs/1/edit
  def edit
  end

  # POST /jobs
  # POST /jobs.json
  def create
    @job = Job.new(job_params)
   @job.remaider = params[:quantity].to_i - params[:completed].to_i
   @job.save!

    respond_to do |format|
      if @job.save
        format.html { redirect_to @job, notice: 'Job was successfully created.' }
        format.json { render :show, status: :created, location: @job }
      else
        format.html { render :new }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobs/1
  # PATCH/PUT /jobs/1.json
  def update
    respond_to do |format|
      if @job.update(job_params)
        format.html { redirect_to @job, notice: 'Job was successfully updated.' }
        format.json { render :show, status: :ok, location: @job }
      else
        format.html { render :edit }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobs/1
  # DELETE /jobs/1.json
  def destroy
    @job.destroy
    respond_to do |format|
      format.html { redirect_to jobs_url, notice: 'Job was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job
      @job = Job.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_params
      params.require(:job).permit(:name, :client_id, :description, :quantity, :datein, :duedate, :completeper, :expectedin, :completed, :status, :comment)
    end
end
