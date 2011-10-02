class StatusController < ApplicationController
	def index
		@time = Time.now
		@processes = `ps -ax`
		@who = `who`
		@uptime = `uptime`
	end
end
