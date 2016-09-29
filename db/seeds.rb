# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])

#   Mayor.create(name: 'Emanuel', city: cities.first)

# rails g scaffold Tv year:integer title:text description:text img_url:text favorite:boolean

# rails g scaffold Staffs title:text name:text bio:text img_url:string

# staff information
# staffs_list = [

# ["Owner and Founder", "MATT LILLEY", "Matt Lilley created MCL Music Services in 2009 to provide Music Clearance, Licensing, and Supervision services to the Film, Television, and Advertising communities. Previously the Director of Music Clearance in the Feature Film division at Paramount Pictures from 1996 - 2008, Matt was responsible for much of the clearance negotiating and licensing in many of Paramount’s most successful films and soundtracks over that span of time.

# In late 2008, Matt was named Vice President of Music Clearance and Licensing at Lionsgate Entertainment (in charge of the Film, Television, and Marketing divisions of the company) which he transitioned into maintaining as his first client under the umbrella of MCL Music Services.

# Over the past several years MCL Music Services has expanded its services and now works in Music Supervision in the independent film and documentary world, Catalogue Administration, and Musicology services in conjunction with Denise Carver, Esq. of CarverMusik (http://www.carvermusik.com)

# An avid fan of jazz music, Matt is a lifelong saxophone player, performing with his jazz quartet in the greater Los Angeles area. Matt holds a Master of Business Administration degree from the University of Phoenix (2003) and a Bachelor of Arts Degree in Music Industry Studies from California State University, Northridge (1997).", "MattLilley.jpg"],

# ["Director of Music Clearance and Licensing", "HEIHACHIRO FUKUDA", "Heihachiro Fukuda joined MCL Music Services after graduating, in 2010, from California State University, Northridge with a Bachelor of Arts in Music Industry Studies. Heihachiro runs the marketing department where he handles clearance and licensing on the high profile series such as The Hunger Games, The Divergent, The Expendables, and more… 

# Hei is fluent in Japanese, which at times has been a great asset with his various connections outside the country. In his free time, he is a freelance photographer who has an incredible eye for detail and has experience with working on a number of projects.", "HeihachiroFukuda.jpg"],


# ["Manager of Music Clearance and Licensing", "HALEY HANNA", "Haley Hanna was born and raised in Southern California, where she graduated from Cal State Northridge in 2013 with a Bachelor of Arts degree in Music Industry Studies. After completing a school internship at MCL Music Services she was hired on at the top of year while finishing up her degree. 

# Here Haley handles the clearance and licensing process for many Lionsgate TV shows such as ‘Nashville’, ‘Orange is the New Black’, and Oprah Winfrey’s new series ‘Greenleaf’. In the past she has also worked on hit shows like ‘Mad Men’, ‘Manhattan’, ‘Nurse Jackie’, and ‘Weeds’. The thrill for her comes from tracking down obscure clearances that seem near impossible to decipher.

# In addition to her extensive roll on the TV side she also works on various side projects such as the documentaries ‘Good Ol’ Freda’ and ‘Who Shot Rock N Roll’.

# Along with Haley’s passion for music, whether live, recorded or singing a tune herself, she also has love for photography and just about anything creative.", "HaleyHanna.jpg"]
# ]

# staffs_list.each do |title, name, bio, img_url|
#   Staff.create( title: title, name: name, bio: bio, img_url: img_url )
# end

# client information
# client_list = [
# 	["LIONSGATE", "clients_logos/Lionsgate.jpg", "(FILM / TV / MARKETING)"],
# 	["NETFLIX", "clients_logos/Netflix.png"],
# 	["MGM", "clients_logos/MGM.jpg"],
# 	["SHOWTIME", "clients_logos/Showtime.png"],
# 	["TELEMUNDO", "clients_logos/Telemundo.png"],
# 	["CBS FILMS", "clients_logos/CBSFilms.png"],
# 	["TNT", "clients_logos/TNT.png"],
# 	["PRIMARY WAVE", "clients_logos/PrimaryWave.png"],
# 	["YAHOO! MUSIC", "clients_logos/Yahoo!.jpg"],
# 	["THE PRODUCER’S LAB", "clients_logos/ProducersLab.png"],
# 	["ROGUE ATLAS PRODUCTIONS", "clients_logos/RogueAtlas.jpg"],
# 	["THE ANNENBERG FOUNDATION", "clients_logos/AnnebergFoundation.jpg"],
# 	["ARCLIGHT PRODUCTIONS", "clients_logos/ArclightProductions.png"],
# 	["THE RAY CHARLES MARKETING GROUP", "clients_logos/RayCharles.png"]
# ]

# client_list.each do |name, img_url, description|
#   Client.create( name: name, img_url: img_url, description: description )
# end


# films information

films_list = [
	["La La Land", "2016", "La La Land is a 2016 American musical comedy-drama film written and directed by Damien Chazelle. The film stars Ryan Gosling, Emma Stone, J. K. Simmons, Finn Wittrock, Callie Hernandez, Rosemarie DeWitt, and Meagen Fay. 

		Mia (Emma Stone), an aspiring actress, serves lattes to movie stars in between auditions, and Sebastian (Ryan Gosling), a dedicated jazz musician, scrapes by playing cocktail piano gigs in dingy bars, but as success mounts they are faced with decisions that begin to fray the fragile fabric of their love affair, and the dreams", "film_posters/LaLaLand.jpg"],


["The Woods", "2016", "The Woods is a 2016 American found footage horror film directed by Adam Wingard and written by Simon Barrett. The film follows a group of hikers in a remote forest who find themselves in danger. 

Involve a group of college students on a camping trip who discover they are not alone.", "film_posters/TheWoods.jpg"],


["Deepwater Horizon", "2016", "Deepwater Horizon is a 2016 American biographical disaster thriller-drama film directed by Peter Berg, written by Matthew Sand and Matthew Michael Carnahan. The film stars Mark Wahlberg, Kurt Russell, John Malkovich, Gina Rodriguez, Dylan O'Brien and Kate Hudson. It is based on the 2010 Deepwater Horizon explosion and oil spill in the Gulf of Mexico.

A story set on the offshore drilling rig Deepwater Horizon, which exploded during April 2010 and created the worst oil spill in U.S. history.", "film_posters/DeepwaterHorizon.jpg"],

["Norm Of The North", "2016", "Norm of the North is a 2016 American 3D computer-animated comedy-adventure film directed by Trevor Wall and written by Daniel R. Altiere, Steven M. Altiere, and Malcolm T. Goldman. It features the voices of Rob Schneider as the title character, Heather Graham, Ken Jeong, Colm Meaney, Loretta Devine, Gabriel Iglesias, Michael McElhatton, and Bill Nighy.

When a real estate development invades his Arctic home, Norm and his three lemming friends head to New York City, where Norm becomes the mascot of the corporation in an attempt to bring it down from the inside and protect his homeland.", "film_posters/NormOfTheNorth.jpg"]


# •	The Perfect Match- Lionsgate
# The Perfect Match is a 2016 American romantic comedy film directed by Bille Woodruff. The film was written by Dana Verde, Brandon Broussard and Gary Hardwick, and stars Terrence J, Cassie Ventura, Lauren London and Paula Patton. Queen Latifah is an executive producer on the film.

# A playboy named Charlie, convinced that all his relationships are dead, meets the beautiful and mysterious Eva. Agreeing to a casual affair, Charlie then wants a bit more from their relationship.

# 2015

# •	The Hunger Games: Mockingjay Part 2 (2015) – Lionsgate 
# The Hunger Games: Mockingjay – Part 2 is a 2015 American epic dystopian science fiction war film directed by Francis Lawrence, with a screenplay by Peter Craig and Danny Strong. It is the fourth and final installment in The Hunger Games film series, and the second of two films based on the novel Mockingjay, the final book in The Hunger Games trilogy, by Suzanne Collins. Produced by Nina Jacobson and Jon Kilik, and distributed by Lionsgate, the film features an ensemble cast that includes Jennifer Lawrence, Josh Hutcherson, Liam Hemsworth, Woody Harrelson, Elizabeth Banks, Julianne Moore, Philip Seymour Hoffman (in his final film role), and Donald Sutherland.

# As the war of Panem escalates to the destruction of other districts, Katniss Everdeen, the reluctant leader of the rebellion, must bring together an army against President Snow, while all she holds dear hangs in the balance.


# •	Triple Nine - Worldview Entertainment
# Triple 9 is a 2016 American crime thriller drama film directed by John Hillcoat and written by Matt Cook. The film stars an ensemble cast featuring Casey Affleck, Chiwetel Ejiofor, Anthony Mackie, Aaron Paul, Clifton Collins, Jr., Norman Reedus, Teresa Palmer, Michael K. Williams, Gal Gadot, with Woody Harrelson, and Kate Winslet.

# A gang of criminals and corrupt cops plan the murder of a police officer in order to pull off their biggest heist yet across town.


# •	The Last Witch Hunter (2015) – Lionsgate 
# The Last Witch Hunter is a 2015 American dark fantasy action thriller film directed by Breck Eisner and written by Matt Sazama and Burk Sharpless. The film stars Vin Diesel as an immortal witch-hunter who must stop a plague from ravaging New York City.

# The last witch hunter is all that stands between humanity and the combined forces of the most horrifying witches in history.



# •	Mortdecai (2015)– Lionsgate 
# Mortdecai is a 2015 American action comedy film directed by David Koepp and written by Eric Aronson. The film is adapted from the novel series Mortdecai (specifically its first installment Don't Point that Thing at Me) written by Kyril Bonfiglioli. It stars Johnny Depp in the title role and also features Gwyneth Paltrow, Ewan McGregor, Olivia Munn, Paul Bettany and Jeff Goldblum.

# Juggling angry Russians, the British Mi5, and an international terrorist, debonair art dealer and part time rogue Charlie Mortdecai races to recover a stolen painting rumored to contain a code that leads to lost Nazi gold.
# ,
]

films_list.each do | title, year, description, img_url, favorite |
	Film.create( title: title, year: year, description: description, img_url: img_url, favorite: favorite)
end
