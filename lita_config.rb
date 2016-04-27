Lita.configure do |config|
  require './lita-deptrai'
  # The name your robot will use.
  config.robot.name      = "AnDuong"
  config.robot.log_level = :info

  # アダプタの指定。Slack とつなげるので、:slack と修正する
  # config.robot.adapter   = :slack

  # Slack のAPIキーを指定する
  # 後述する heoku コマンドで heroku の環境変数を設定する
  # config.adapters.slack.token = ENV["SLACK_API_KEY"]

  # heroku の redis アドオン Redis To Go 関連の設定
  # config.redis[:url] = ENV["REDISTOGO_URL"]
  # config.http.port   = ENV["PORT"]

  # config.robot.adapter = :hipchat
  # config.adapters.hipchat.jid = "570358_3857347@chat.hipchat.com"
  # config.adapters.hipchat.password = "anduong@123"
  # config.adapters.hipchat.debug = true
  # config.adapters.hipchat.rooms = :all

  config.robot.adapter = :chatwork
  config.adapters.chatwork.api_key = ENV["CHATWORK_API_KEY"]
  config.adapters.chatwork.interval = 5
end
