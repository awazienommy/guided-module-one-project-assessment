User.destroy_all
List.destroy_all
Post.destroy_all
#Considered using Faker::UniqueGenerato.clear to avoid the Faker::UniqueGenerator::RetryLimitExceeded exception
#but feel it unecessary since the faker values are contained in other methods whose clear have been defined above

#Create 50 instances of Users
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

#CREATE LISTS
#Create 75 grocery item List instances
75.times do
    List.create(
        category: "Grocery"
        list_title: Faker::Food.unique.dish
        #idea is to use dish to represent the title of a shopping session.
        #Shopping lists will have todo implementation where bought is updated to show its bought
    )
end

#Create 75 family-based List instances
75.times do
    List.create(
        category: "Family"
        list_title: Faker::Relationship.unique.familial(connection: 'extended')
        #idea is to group family todo, journal or goal entry under a family member name
        #hence some of it can be updatable, and some not
    )
end

#Create 75 work-based List instances
75.times do
    List.create(
        category: "Work"
        list_title: Faker::Job.unique.title
        #Title choosen because it's what has more than one word in the faker job category
        #Work category lists can be todos, journals or goals/objectives
    )
end


Post.create(user_id: , list_id: , entry_type_id: , list_type_id: )
Post.create(user_id: , list_id: , entry_type_id: , list_type_id: )
Post.create(user_id: , list_id: , entry_type_id: , list_type_id: )
Post.create(user_id: , list_id: , entry_type_id: , list_type_id: )
Post.create(user_id: , list_id: , entry_type_id: , list_type_id: )
Post.create(user_id: , list_id: , entry_type_id: , list_type_id: )
Post.create(user_id: , list_id: , entry_type_id: , list_type_id: )


puts "It's been seeded"