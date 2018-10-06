class Book < ApplicationRecord
belongs_to :author
has_many :users_books
has_many :users, through: :usuario_books
end
#pertenece a author
