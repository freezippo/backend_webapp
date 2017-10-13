# Create user if not exists
User.find_by_email("test@example.com") || User.create!(email: 'test@example.com' , password: 'testtest1' , password_confirmation: 'testtest1')
