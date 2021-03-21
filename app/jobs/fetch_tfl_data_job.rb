class FetchTflDataJob < ApplicationJob
  def perform
    client = TflClient.new
    Snapshot.create(data: client.fetch.response)
  end
end
