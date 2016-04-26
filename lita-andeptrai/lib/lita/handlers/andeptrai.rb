module Lita
  module Handlers
    class Andeptrai < Handler
      route /^java\s+(.+)/, :with_java, help: { "java TEXT" => "reply back with java." }

      def with_java( response )
        word = response.matches[0][0]
        response.reply("!!! #{word} とジャバ !!!")
      end
      Lita.register_handler(self)
    end
  end
end
