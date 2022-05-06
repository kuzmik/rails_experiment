# frozen_string_literal: true

class StatsCollectorJob
  include Sidekiq::Job

  sidekiq_options queue: 'sk'

  def perform(*args)
    sleep(2)

    File.open('log/sk.log', 'a') do |line|
      line.puts "Health Check succeeded: #{DateTime.now} \n"
    end

    sleep(6)
  end
end
