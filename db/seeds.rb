# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = [{:first_name => 'Joe', :last_name => "Biden",:type => "Doctor", :email => 'jbiden@example.com', :user_id => 123456, :password => 11111111},
          {:first_name => 'John', :last_name => "Lennon",:type => "Doctor", :email => 'jlennon@example.com', :user_id => 123465, :password => 11111111},
        {:first_name => 'Simon', :last_name => "Jones",:type => "Doctor", :email => 'sjones@example.com', :user_id => 123564, :password => 11111111},
        {:first_name => 'James', :last_name => "Brown",:type => "Doctor", :email => 'jbrown@example.com', :user_id => 124563, :password => 11111111},
        {:first_name => 'Sarah', :last_name => "Wilson",:type => "Doctor", :email => 'swilson@example.com', :user_id => 134562, :password => 11111111},
        #{:first_name => 'Anna', :last_name => "Hathaway",:type => "Admin", :email => 'ahathway@example.com', :user_id => 234561, :password => 11111111},
        {:first_name => 'Mitchel', :last_name => "Nitche",:type => "Doctor", :email => 'mnitche@example.com', :user_id => 123546, :password => 11111111},
        {:first_name => 'Leonard', :last_name => "Ralph",:type => "Admin", :email => 'lralph@example.com', :user_id => 124356, :password => 11111111},
        {:first_name => 'Thomas', :last_name => "Jacob",:type => "Admin", :email => 'tjacob@example.com', :user_id => 132456, :password => 11111111},
  
  
     ]

users.each do |user|
  User.create!(user)
end