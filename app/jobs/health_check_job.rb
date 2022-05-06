# frozen_string_literal: true

class HealthCheckJob < ApplicationJob
  queue_as :aj

  def perform(*args)
    sleep(2)

    File.open('log/aj.log', 'a') do |line|
      line.puts "Health Check succeeded: #{DateTime.now} \n"
    end

    sleep(3)
  end
end
