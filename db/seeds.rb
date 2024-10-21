# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create!(
  email: 'user@twigo.com',
  password: '12345678',
  password_confirmation: '12345678',
  active: true,
  approved: true,
  confirmed: true
)

Course.create!(
  title: 'Matemática na prática',
  description: 'Aprenda toda base de matemática do ensino fundamental e ensino médio.',
  author: 'Luana Lima',
  price: 29.90,
  category: 'Matemática',
  language: 'Português',
  video_url: 'course_1.jpg',
  video_time: 485,
  thumbnail: 'course_1.jpg',
  end_date: Time.now.next_month
)

Course.create!(
  title: 'Lógica de programação',
  description: 'Tudo que precisa para ter uma base sólida para começar no mundo do programação.',
  author: 'Heitor Goldenger',
  price: 34.90,
  category: 'Tecnologia da Informação',
  language: 'Português',
  video_url: '',
  video_time: 748,
  thumbnail: 'course_2.jpg',
  end_date: Time.now.next_day
)

Course.create!(
  title: 'Excel completo',
  description: 'Aprenda todos os conceitos e truques do Excel para uso profissional.',
  author: 'Alder Naxons',
  price: 19.90,
  category: 'Tecnologia da Informação',
  language: 'Português',
  video_url: '',
  video_time: 399,
  thumbnail: 'course_3.jpg',
  end_date: Time.now.advance(days: 1)
)

Course.create!(
  title: 'Criatividade e Inovação nos Negócios',
  description: 'Criatividade e Inovação nos Negócios: Empreendedorismo, Design Thinking, Mapa da Empatia, Canvas, Mapas Mentais, Scamper',
  author: 'Floriano Ferreira Junior',
  price: 199.90,
  category: 'Negócios',
  language: 'Português',
  video_url: '',
  video_time: 278,
  thumbnail: 'course_4.jpg',
  end_date: Time.now.advance(days: 10)
)
