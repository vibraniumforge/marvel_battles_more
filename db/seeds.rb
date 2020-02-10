Battle.destroy_all
CharacterSuperpower.destroy_all
Character.destroy_all
FacebookUser.destroy_all
Movie.destroy_all
Superpower.destroy_all
User.destroy_all

Movie.create([
    { name: "Iron Man", year: 2008, poster: "Iron_Man_poster.jpg" },
    { name: "The Incredible Hulk", year: 2008, poster: "The_Incredible_Hulk_poster.jpg" },
    { name: "Iron Man 2", year: 2010, poster: "Iron_Man_2_poster.jpg" },
    { name: "Thor", year: 2011, poster: "Thor_poster.jpg"},
    { name: "Captain America: The First Avenger", year: 2011, poster: "Captain_America_The_First_Avenger_poster.jpg"},
    { name: "The Avengers", year: 2012, poster: "Avengers_poster.jpg"},
    { name: "Iron Man 3", year: 2013, poster: "Iron_Man_3_poster.jpg"},
    { name: "Thor: The Dark World", year: 2013, poster: "Thor_-_The_Dark_World_poster.jpg"},
    { name: "Captain America: The Winter Soldier", year: 2014, poster: "Captain_America_The_Winter_Soldier.jpg"},
    { name: "Guardians of the Galaxy", year: 2014, poster: "Guardians_of_the_Galaxy_poster.jpg"},
    { name: "Avengers: Age of Ultron", year: 2015, poster: "Avengers_Age_of_Ultron_poster.jpg"},
    { name: "Ant-Man", year: 2015, poster: "Ant-Man_poster.jpg"},
    { name: "Captain America: Civil War", year: 2016, poster: "Captain_America_Civil_War_poster.jpg"},
    { name: "Doctor Strange", year: 2016, poster: "Doctor_Strange_poster.jpg"},
    { name: "Guardians of the Galaxy Vol. 2", year: 2017, poster: "Guardians_of_the_Galaxy_Vol_2_poster.jpg"},
    { name: "Spider-Man: Homecoming", year: 2017, poster: "Spider-Man_Homecoming_poster.jpg"},
    { name: "Thor: Ragnarok", year: 2017, poster: "Thor_Ragnarok_poster.jpg"},
    { name: "Black Panther", year: 2018, poster: "Black_Panther_poster.jpg"},
    { name: "Avengers: Infinity War", year: 2018, poster: "Avengers_Infinity_War_poster.jpg"},
    { name: "Ant-Man and the Wasp", year: 2018, poster: "Ant-Man_and_the_Wasp_poster.jpg"},
    { name: "Captain Marvel", year: 2019, poster: "Captain_Marvel_poster"},
    { name: "Avengers: Endgame", year: 2019, poster: "Avengers_Endgame_poster.jpg"},
    { name: "Spider-Man: Far From Home", year: 2019, poster: "Spider-Man_Far_From_Home_poster.jpg"}
])

Character.create([
    { name: "Steve Rogers", alias: "Captain America"},
    { name: "Tony Stark", alias: "Iron Man"},
    { name: "Bruce Banner", alias: "The Hulk"},
    { name: "Thor Odinson", alias: "Thor"},
    { name: "Natasha Romanoff", alias: "Black Widow"},
    { name: "Clint Barton", alias: "Hawkeye"},
    { name: "James Rhoades", alias: "War Machine"},
    { name: "Sam Wilson", alias: "Falcon"},
    { name: "James Barnes", alias: "Winter Soldier"},
    { name: "Peter Quill", alias: "Star Lord"},
    { name: "Pietro Maximoff", alias: "Quicksilver"},
    { name: "Wanda Maximoff", alias: "Scarlet Witch"},
    { name: "Vision", alias: "Vision"},
    { name: "Scott Lang", alias: "Ant-Man"},
    { name: "Peter Parker", alias: "Spider-Man"},
    { name: "Steven Strange", alias: "Dr. Strange"},
    { name: "T'Challa", alias: "Black Panther"},
    { name: "Hope Van Dyne", alias: "The Wasp"},
    { name: "Carol Danvers", alias: "Captain Marvel"}
])

Superpower.create([
    { name: "Super Soldier Serum" },
    { name: "Vibranium Shield" },
    { name: "Power Suit" },
    { name: "Arc Reactor" },
    { name: "Flight" },
    { name: "Rage Monster" },
    { name: "Super Soldier Serum" },
    { name: "God of Thunder" },
    { name: "Alien" },
    { name: "Mjolnir the Hammer"},
    { name: "Magic"},
    { name: "Assasin" },
    { name: "Arrows" },
    { name: "Arc Reactor" },
    { name: "Jetpack" },
    { name: "Vibranium Arm" },
    { name: "Runs Fast" },
    { name: "Robot" },
    { name: "The Mind Infinity Stone" },
    { name: "Shrinking Suit" },
    { name: "The Time Infinity Stone" },
    { name: "Spider Powers" },
    { name: "Vibranium Suit" },
    { name: "Heart Shaped Herb" },
    { name: "Shrinking Suit with Wings" },
    { name: "Cosmic Powers" }
])

CharacterSuperpower.create([
    {superpower_id: Superpower.find_by({ name: "Super Soldier Serum"}).id, character_id: Character.find_by(name: "Steve Rogers").id}, 
    {superpower_id: Superpower.find_by( name: "Vibranium Shield").id, character_id: Character.find_by(name: "Steve Rogers").id}, 

    {superpower_id: Superpower.find_by( name: "Power Suit").id, character_id: Character.find_by(name: "Tony Stark").id},
    {superpower_id: Superpower.find_by( name: "Arc Reactor").id, character_id: Character.find_by(name: "Tony Stark").id},
    {superpower_id: Superpower.find_by( name: "Flight").id, character_id: Character.find_by(name: "Tony Stark").id},

    {superpower_id: Superpower.find_by( name: "Rage Monster").id, character_id: Character.find_by(name: "Bruce Banner").id},
    {superpower_id: Superpower.find_by( name: "Super Soldier Serum").id, character_id: Character.find_by(name: "Bruce Banner").id},

    {superpower_id: Superpower.find_by( name: "God of Thunder").id, character_id: Character.find_by(name: "Thor Odinson").id},
    {superpower_id: Superpower.find_by( name: "Alien").id, character_id: Character.find_by(name: "Thor Odinson").id},
    {superpower_id: Superpower.find_by( name: "Mjolnir the Hammer").id, character_id: Character.find_by(name: "Thor Odinson").id},
    {superpower_id: Superpower.find_by( name: "Magic").id, character_id: Character.find_by(name: "Thor Odinson").id},

    {superpower_id: Superpower.find_by( name: "Assasin").id, character_id: Character.find_by(name: "Natasha Romanoff").id},

    {superpower_id: Superpower.find_by( name: "Arrows").id, character_id: Character.find_by(name: "Clint Barton").id},

    {superpower_id: Superpower.find_by( name: "Power Suit").id, character_id: Character.find_by(name: "James Rhoades").id},
    {superpower_id: Superpower.find_by( name: "Arc Reactor").id, character_id: Character.find_by(name: "James Rhoades").id},
    {superpower_id: Superpower.find_by( name: "Flight").id, character_id: Character.find_by(name: "James Rhoades").id},

    {superpower_id: Superpower.find_by( name: "Jetpack").id, character_id: Character.find_by(name: "Sam Wilson").id},
    {superpower_id: Superpower.find_by( name: "Flight").id, character_id: Character.find_by(name: "Sam Wilson").id},

    {superpower_id: Superpower.find_by( name: "Vibranium Arm").id, character_id: Character.find_by(name: "James Barnes").id},
    {superpower_id: Superpower.find_by( name: "Super Soldier Serum").id, character_id: Character.find_by(name: "James Barnes").id},

    {superpower_id: Superpower.find_by( name: "Flight").id, character_id: Character.find_by(name: "Peter Quill").id},

    {superpower_id: Superpower.find_by( name: "Runs Fast").id, character_id: Character.find_by(name: "Pietro Maximoff").id},

    {superpower_id: Superpower.find_by( name: "Magic").id, character_id: Character.find_by(name: "Wanda Maximoff").id},

    {superpower_id: Superpower.find_by( name: "Robot").id, character_id: Character.find_by(name: "Vision").id},
    {superpower_id: Superpower.find_by( name: "Flight").id, character_id: Character.find_by(name: "Vision").id},
    {superpower_id: Superpower.find_by( name: "The Mind Infinity Stone").id, character_id: Character.find_by(name: "Vision").id},

    {superpower_id: Superpower.find_by( name: "Shrinking Suit").id, character_id: Character.find_by(name: "Scott Lang").id},

    {superpower_id: Superpower.find_by( name: "Spider Powers").id, character_id: Character.find_by(name: "Peter Parker").id},

    {superpower_id: Superpower.find_by( name: "Magic").id, character_id: Character.find_by(name: "Steven Strange").id},
    {superpower_id: Superpower.find_by( name: "The Time Infinity Stone").id, character_id: Character.find_by(name: "Steven Strange").id},

    {superpower_id: Superpower.find_by( name: "Vibranium Suit").id, character_id: Character.find_by(name: "T'Challa").id},
    {superpower_id: Superpower.find_by( name: "Heart Shaped Herb").id, character_id: Character.find_by(name: "T'Challa").id},

    {superpower_id: Superpower.find_by( name: "Shrinking Suit with Wings").id, character_id: Character.find_by(name: "Hope Van Dyne").id},

    {superpower_id: Superpower.find_by( name: "Cosmic Powers").id, character_id: Character.find_by(name: "Carol Danvers").id},
    ])

    Battle.create([
        name: "Gulmira", location: "Afghanistan", character_id: Character.find_by(name: "Tony Stark").id, movie_id: Movie.find_by(name: "Iron Man").id,
    ])

    User.create([name: "Stan Lee", password: "12345"])
puts "seeds done!"
