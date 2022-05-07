# frozen_string_literal: true

class OverviewController < ApplicationController
  def index; end

  def active_job
    HealthCheckJob.perform_later
    flash[:error] = 'Job queued'
  rescue StandardError => e
    Rails.logger.error(e)
    flash[:error] = e.message
  end

  def sidekiq
    StatsCollectorJob.perform_async
    flash[:error] = 'Job queued'
  rescue SidekiqUniqueJobs::Conflict => e
    Rails.logger.error(e)
    flash[:error] = e.message
  end
end
