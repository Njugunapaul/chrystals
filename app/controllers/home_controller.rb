class HomeController < ApplicationController
  def index
    #
    # Dashboards Statistics
    #

    # Get total number of Projects
    @total_clients = Client.all.count

    # Get total number of Outlets
    @total_jobs = Job.all.count
    @total_printjobs = PrintJob.all.count

    # Get total number of teams
    #@total_teams = Team.all.count

    # Get total Number of Agents
    #@total_agents = 0
  end
end
