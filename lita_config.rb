Lita.configure do |config|
  require './lita-deptrai'
  # The name your robot will use.
  config.robot.name      = "lita"
  config.robot.log_level = :info

  config.robot.adapter   = :slack

  config.adapters.slack.token = ENV["SLACK_API_KEY"]

  config.redis[:url] = ENV["REDISTOGO_URL"]
  config.http.port   = ENV["PORT"]
end
