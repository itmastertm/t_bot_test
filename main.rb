require 'telegram/bot'

TOKEN = '1410470583:AAGpX-CUgOo513fBzRnYALi5m7E7CFHT4cc'

Telegram::Bot::Client.run(TOKEN) do |bot|
	bot.listen do |message|
		case message.text
		when '/start', '/start start'
			bot.api.send_message(c
				hat_id: message.chat.id, 
				text: "Привет, #{message.from.first_name} Я бот Виталика!"
				)
		else
			ot.api.send_message(c
				hat_id: message.chat.id, 
				text: "Я вас не понимаю."
				)
		end
	end
end