# frozen_string_literal: true

ActiveJob::Uniqueness.configure do |config|
  config.lock_ttl = 600
  config.lock_prefix = 'activejob_uniquejobs'
  config.on_conflict = :raise
  config.digest_method = OpenSSL::Digest::MD5
  config.redlock_servers = [ENV.fetch('REDIS_URL', 'redis://localhost:6379/1')]
end
