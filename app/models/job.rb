class Job < ActiveRecord::Base
  after_create :set_init_status

  def set_init_status
    set_status!('working')
  end

  def done!
    set_status!('done')
  end

  def self.produce
    new_job = self.new
    new_job.save

    sleep 4

    new_job.done!
  end

  private

  def set_status!(status)
    update_attributes(status: status)
  end

end
