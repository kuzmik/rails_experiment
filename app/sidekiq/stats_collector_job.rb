# frozen_string_literal: true

class StatsCollectorJob
  include Sidekiq::Job

  sidekiq_options queue: 'sk',
                  lock: :until_executed,
                  on_conflict: { client: :raise, server: :raise }

  def perform(*_args)
    sleep(5)

    File.open('log/sk.log', 'a') do |line|
      line.puts "Stats: #{rand(99)}\n"
    end

    sleep(5)
  end
end
