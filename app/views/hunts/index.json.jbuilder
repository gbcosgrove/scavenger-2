json.array!(@hunts) do |hunt|
  json.extract! hunt, :id, :challenge_count, :creator
  json.url hunt_url(hunt, format: :json)
end
