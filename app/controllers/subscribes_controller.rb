class SubscribesController < ApplicationController


	def create
		@subscribe = Subscribe.new subscribe_params
			if @subscribe.save
				redirect_to root_path, notice: "Hey Thanks"
			else
				redirect_to root_path, notice: "Nooooooo!"
	end

def manage
	
end

end

private

	def subscribe_params
		params.require(:subscribe).permit(:email)
	end
	# def sub_y?
  #   	redirect_to root_path, notice: "ooopies daisy!"
	# 	end
end
