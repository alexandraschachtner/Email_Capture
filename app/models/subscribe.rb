class Subscribe < ApplicationRecord
	validates  :email, :sub, presence: true
end
