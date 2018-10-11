require "http"

URL = "https://bellbird.joinhandshake-internal.com/push"

class PushWorker
  include Sidekiq::Worker
  def perform(alarm_id)
    puts "Posting to #{URL} with #{alarm_id}"
    HTTP.post(URL, :json => { :alarm_id => alarm_id })

    # TODO (eford): handle retries
  end
end