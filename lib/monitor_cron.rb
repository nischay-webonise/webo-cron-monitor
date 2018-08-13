module MonitorCron

  def initialize
  end

  def start!
    Thread.new do
      binding.pry
      Cron.each do |cron|
        # do something
        cron.update_column(:url, rand(10000))
      end
    end
  end
end