require 'twillio-ruby'

class TwillioControler < ApplicationController
	include webhookable 

	after_filter :set_header

	skip_before_action :verify_authenticity_token

	def voice
		response = Twillio::TwiML::Response.new do |r|
			r.Say 'Hey There, This worked really well!', :voice => 'alice'
				r.Play 'http://linode.rabasa.com/cantina.mp3'
		end

		render _twiml response
	end

end