User.create!(email: 'admin@example.com', password: 'admin123', password_confirmation: 'admin123')

30.times do
  Course.create!([{
    title: Faker::Educator.course_name,
    description: Faker::TvShows::GameOfThrones.quote,
    user_id: User.first.id
  }])
end