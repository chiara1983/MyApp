namespace :db do
 desc "Popolo il db"
 task :populate => :environment do
   Rake::Task['db:reset'].invoke
   User.create!(:name => "Utente Prova",
		:email => "esempio@gmail.com",
		:password => "helloo",
		:password_confirmation => "helloo")
   99.times do |n|
     name = Faker::Name.name
     email = "esempio-#{n+1}@gmail.com"
     password = "password"
     User.create!(:name => name,
		  :email => email,
		  :password => password,
		  :password_confirmation => password)
   end
  end
end