class BookController < ApplicationController
    before_action :authenticate_usuario!, only: [:new, :create, :delete]
    def index
        # Hacemos una consulta de todos los libros.
        @books=Book.all
    end

    def new
        @authors =Author.all
         # variable de clase, la puede usar en toda la clase o en los templates asociados a ella
        #trae todos los objetos de la tabla autor
        #el otro trae el primer registro
       # y el primer objetio que coincida con mi búsqueda
        #Author.find()
        #Author.find_by(name)
        #Author.where()
      
    end

    def create
        book_params=params.require(:book).permit(:title, :description, :author_id)
        Book.create(book_params)
        redirect_to action: 'index'
    end

    def show
        @book = Book.find(params[:id])
        if @book.nil?
            redirect_to action: 'index'
        end
    end

    def delete
        @book = Book.find(params[:id])
        unless @book.nil?
            @book.delete
        end
        redirect_to action: 'index'
    end
end
