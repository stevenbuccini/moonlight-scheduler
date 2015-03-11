# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = [{:first_name => 'Joe', :last_name => "Biden",:type => :doctor, :email => 'jbiden@example.com', :user_id => 123456, :phone_1 => '012-345-6789', :phone_2 => '333-333-3333', :phone_3 => '444-444-4444'},
    	  {:first_name => 'James', :last_name => "Brown",:type => :doctor, :email => 'jbrown@example.com', :user_id => 123465, :phone_1 => '223-232-2323', :phone_2 => '567-567-5675'},
        {:first_name => 'Simon', :last_name => "Jones",:type => :doctor, :email => 'sjones@example.com', :user_id => 123564, :phone_1 => '777-777-7777'},
        {:first_name => 'James', :last_name => "Brown",:type => :doctor, :email => 'jbrown@example.com', :user_id => 124563, :phone_1 => '223-232-2323', :phone_2 => '567-567-5675'},
        {:first_name => 'Sarah', :last_name => "Wilson",:type => :doctor, :email => 'swilson@example.com', :user_id => 134562, :phone_1 => '563-345-2345', :phone_2 => '666-666-6666', :phone_3 => '888-888-8888'},
        {:first_name => 'Anna', :last_name => "Hathaway",:type => :super_admin, :email => 'ahathway@example.com', :user_id => 234561, :phone_1 => '234-645-7867'},
        {:first_name => 'Mitchel', :last_name => "Nitche",:type => :doctor, :email => 'mnitche@example.com', :user_id => 123546, :phone_1 => '760-805-9889', :phone_2 => '456-456-4564'},
        {:first_name => 'Leonard', :last_name => "Ralph",:type => :admin, :email => 'lralph@example.com', :user_id => 124356, :phone_1 => '887-546-4575'},
        {:first_name => 'Thomas', :last_name => "Jacob",:type => :admin, :email => 'tjacob@example.com', :user_id => 132456, :phone_1 => '999-998-8787'},
  
  
  	 ]

users.each do |user|
  User.create!(user)
end
