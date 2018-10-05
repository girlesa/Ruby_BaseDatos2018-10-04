class Author < ApplicationRecord
    has_many :books, dependent: :destroy
end
#rails db:migrate Para aplicar las migraciones pendientes
