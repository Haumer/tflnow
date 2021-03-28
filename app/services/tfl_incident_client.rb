class TflIncidentClient
  def initialize(**options)
    @date = options[:date] || Date.today
    @snapshots = select_snapshots_for_date
  end

  def select_snapshots_for_date
    Snapshot.where(created_at: @date.midnight..@date.end_of_day)
  end

  def compact
    @snapshots.map do |snapshot|
      snapshot.data.map do |data|
        {
          created_at: snapshot.created_at,
          name: data['name'],
          status: data.dig('lineStatuses').first.dig('statusSeverityDescription'),
          reason: data.dig('lineStatuses').first.dig('reason')
        }
      end
    end
  end
end
