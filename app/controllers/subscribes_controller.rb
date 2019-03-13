class SubscribesController < ApplicationController


	def create
		@subscribe = Subscribe.new subscribe_params
			if @subscribe.save
				redirect_to root_path, notice: "Hey Thanks"
			else
				redirect_to root_path, notice: "Nooooooo!"
	end

def manage
	if sub_params.subscribes
		redirect_to: sub_post
	else
		redirect_to: unsub_post
	end
end

private

	def subscribe_params
		params.require(:subscribe).permit(:email)
	end
