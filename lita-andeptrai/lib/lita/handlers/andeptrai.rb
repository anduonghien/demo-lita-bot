module Lita
  module Handlers
    class Andeptrai < Handler
      # insert handler code here
      route /^hello\s+(.+)/, :with_deptrai, help: { "hello An" => "reply back with hello." }

      def with_deptrai( response )
        word = response.matches[0][0]
        response.reply("#{word} Dep trai")
      end
      Lita.register_handler(self)
    end
  end
end
