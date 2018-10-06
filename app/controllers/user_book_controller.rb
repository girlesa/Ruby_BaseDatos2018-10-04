class UserBookController < ApplicationController
    before_action :authenticate_usuario!
    def index
    @books = current_usuario.books
    end
    def add
        book_id=params.require(:book).permit(:id)
        book= Book.find(book_id[:id])
        unless book.nil?
            current_usuario.books.push(book)
        end
        redirect_to action: 'index'
    end

end
