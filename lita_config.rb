Lita.configure do |config|
  # The name your robot will use.
  config.robot.name      = "lita"
  config.robot.log_level = :info

  # アダプタの指定。Slack とつなげるので、:slack と修正する
  config.robot.adapter   = :slack

  # Slack のAPIキーを指定する
  # 後述する heoku コマンドで heroku の環境変数を設定する
  config.adapters.slack.token = ENV["SLACK_API_KEY"]

  # heroku の redis アドオン Redis To Go 関連の設定
  config.redis[:url] = ENV["REDISTOGO_URL"]
  config.http.port   = ENV["PORT"]
end