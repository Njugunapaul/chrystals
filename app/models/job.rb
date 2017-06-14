class Job < ApplicationRecord
  belongs_to :client
  has_many  :print_jobs
  before_create :calculate_completeper

  private
    def calculate_completeper
      self.completeper = quantity.to_i - completed_amount.to_i
    end


end
