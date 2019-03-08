class Subscribe < ApplicationRecord
	validates :name, :email, presence: true
end
