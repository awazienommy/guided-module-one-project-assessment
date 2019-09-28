User.destroy_all
List.destroy_all
Post.destroy_all
#Considered using Faker::UniqueGenerato.clear to avoid the Faker::UniqueGenerator::RetryLimitExceeded exception
#but feel it unecessary since the faker values are contained in other methods whose clear have been defined above

#Create 50 Users
50.times do 
    User.create(
        name: Faker::FunnyName.unique.two_word_name,
        email: Faker::Internet.unique.free_email,
        username: Faker::Internet.unique.username(specifier: 5..10),
        password: Faker::Internet.unique.password(min_length: 8, max_length: 16, mix_case: true, special_characters: true)
    )
end



#Put an instruction telling the user the password restrictions: must be between 8 and 16, have at least one 
#upper case and lower case and one special charcter 
#Usename should be between 5 and 10 characters

grocery = List.create(category: "Grocries")
meeting = List.create(category: "Meetings")
family = List.create(category: "Family")
work = List.create(category: "Work")

Post.create(user_id: , list_id: , entry_type_id: , list_type_id: )
Post.create(user_id: , list_id: , entry_type_id: , list_type_id: )
Post.create(user_id: , list_id: , entry_type_id: , list_type_id: )
Post.create(user_id: , list_id: , entry_type_id: , list_type_id: )
Post.create(user_id: , list_id: , entry_type_id: , list_type_id: )
Post.create(user_id: , list_id: , entry_type_id: , list_type_id: )
Post.create(user_id: , list_id: , entry_type_id: , list_type_id: )


puts "It's been seeded"