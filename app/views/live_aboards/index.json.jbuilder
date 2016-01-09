json.array!(@live_aboards) do |live_aboard|
  json.extract! live_aboard, :id, :name, :address, :phone, :website
  json.url live_aboard_url(live_aboard, format: :json)
end
