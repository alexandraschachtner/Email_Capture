class SubscribesController < ApplicationController

	def manage
		if subscribe_params.sub
			redirect_to sub_post
		# elseif subscribe_params.unsub
		# 	redirect_to unsub_post
		else
			redirect_to root_path, notice: "Oops! It looks like something is missing."
		end
	end

	def sub
		@subscribe = Subscribe.find_or_initialize_by(email: subscribe_params[:email, :sub == "yes"])
		if @subscribe.new_record?
			@subscribe.save!
			redirect_to root_path, notice: "Hey thanks for signing up."
		else
			redirect_to root_path, notice: "Looks like your are already here!"
		end
	end

	# def unsub
	# 	@subscribe = Subscribe.find_or_initialize_by(email: subscribe_params[:email])
	# 	if @subscribe.new_record?
	# 		redirect_to root_path, notice: "Looks like your are already here!"
	# 	else
	# 		redirect_to update_path
	# 	end
	end



private

	def subscribe_params
		params.require(:subscribe).permit(:email)
	end
# end
