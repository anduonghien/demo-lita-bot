module Lita
  module Handlers
    class Deptrai < Handler
      # insert handler code here
      route /^hello\s+(.+)/, :with_deptrai, help: { "hello TEXT" => "reply back with hello." }

      def with_deptrai( response )
        word = response.matches[0][0]
        response.reply("
          #{word} handsome. Good morning. 
          From Room ID: #{response.room.id},
          From User ID: #{response.user.id},
          "
        )
      end
      Lita.register_handler(self)
    end
  end
end
