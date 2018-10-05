# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Book.create(title: 'Las venas abiertas de América Latina',
            description: 'Con este libro Eduardo Galeano vendío muchos ejemplares...')

Book.create(title: 'El Hombre en busca de sentido',
            description: 'Es un relato de la segunda guerra mundial muy interesante')

Book.create(title: 'Baluarte',
            description: 'Elvira Sastre vende muchos libros a una cantidad impresionante de jóvenes')

Book.create(title: "No nacimos pa' semilla",
            description: 'Salazar hace una interesante crónica de la juventud y la violencia en Medellín en los años 80 y 90.')
