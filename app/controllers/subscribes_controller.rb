class SubscribesController < ApplicationController


	def create

		@subscribe = Subscribe.new subscribe_params
			if @subscribe.save
				redirect_to root_path, notice: "Hey Thanks"
			else
				redirect_to root_path, notice: "Nooooooo!"
	  end
	end

private

	def subscribe_params
		params.require(:subscribe).permit(:sub, :email)
	end
end
