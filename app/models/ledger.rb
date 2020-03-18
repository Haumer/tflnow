class Ledger < ApplicationRecord
  module Api
    @@ledger = Ledger.first
    def self.last_run
      @@ledger.api_log.last
    end

    def self.next_occurance(occurance)
      new_occurance = @@ledger.uptime_log << occurance
      @@ledger.update(api_log: new_occurance)
    end
  end

  module Uptime
    @@ledger = Ledger.first
    def self.last_run
      @@ledger.first.uptime_log.last
    end

    def self.next_occurance(occurance)
      new_occurance = @@ledger.uptime_log << occurance
      @@ledger.update(uptime_log: new_occurance)
    end
  end
  @@ledger = Ledger.first
  @@ledger.instance_methods
end
