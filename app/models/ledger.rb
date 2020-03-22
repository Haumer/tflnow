class Ledger < ApplicationRecord
  @@ledger = Ledger.first
  module Api
    @@ledger = Ledger.first
    def self.last_run
      @@ledger.api_log.last
    end

    def self.next_occurance(occurance)
      new_occurance = @@ledger.uptime_log << occurance
      @@ledger.update(api_log: new_occurance)
    end

    def self.assess_day
      dates = @@ledger.api_log.map { |log| log.strftime("%m/%d/%Y") }
      hash = Hash.new(0)
      dates.each do |date|
        if hash.key?(date)
          hash[date] += 1
        else
          hash[date] = 1
        end
      end
      hash
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

  module Reasons
    @@ledger = Ledger.first

    def self.next_occurance(occurance)
      new_occurance = @@ledger.uptime_log << occurance
      @@ledger.update(reasons_log: new_occurance)
    end
  end

  def self.api_log
    @@ledger.api_log
  end
end
