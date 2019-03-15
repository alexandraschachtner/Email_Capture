class Subscribe < ApplicationRecord
	validates  :email, presence: true
	validates  :sub, presence: true
end
