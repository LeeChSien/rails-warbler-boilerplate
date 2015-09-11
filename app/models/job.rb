class Job < ActiveRecord::Base
  after_create :set_init_status

  def set_init_status
    set_status!('working')
  end

  def done!
    set_status!('done')
  end

  def work!
    sleep 4
    self.done!
  end

  private

  def set_status!(status)
    update_attributes(status: status)
  end

end
