Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'book#index'
  get 'libros/todos', to: "book#index"
  get 'libros/nuevo-libro', to: "book#new"
  post 'libros/crear-libro', to: "book#create"
  get 'libros/ver-libro/:id', to: "book#show"
  post 'libros/borrar-libro/:id', to: "book#delete"
end
