class UserBook < ApplicationRecord
  belongs_to :usuario
  belongs_to :book
end
