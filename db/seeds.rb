# ******staff page********
staffs_list = [
["Owner and Founder", "MATT LILLEY", "Matt Lilley created MCL Music Services in 2009 to provide Music Clearance, Licensing, and Supervision services to the Film, Television, and Advertising communities. Previously the Director of Music Clearance in the Feature Film division at Paramount Pictures from 1996 - 2008, Matt was responsible for much of the clearance negotiating and licensing in many of Paramount’s most successful films and soundtracks over that span of time.

In late 2008, Matt was named Vice President of Music Clearance and Licensing at Lionsgate Entertainment (in charge of the Film, Television, and Marketing divisions of the company) which he transitioned into maintaining as his first client under the umbrella of MCL Music Services.

Over the past several years MCL Music Services has expanded its services and now works in Music Supervision in the independent film and documentary world, Catalogue Administration, and Musicology services in conjunction with Denise Carver, Esq. of CarverMusik ([CarverMusik](http://www.carvermusik.com)).

An avid fan of jazz music, Matt is a lifelong saxophone player, performing with his jazz quartet in the greater Los Angeles area. Matt holds a Master of Business Administration degree from the University of Phoenix (2003) and a Bachelor of Arts Degree in Music Industry Studies from California State University, Northridge (1997).", "MattLilley.jpg"],

["Director of Music Clearance and Licensing", "HEIHACHIRO FUKUDA", "Heihachiro Fukuda joined MCL Music Services after graduating, in 2010, from California State University, Northridge with a Bachelor of Arts in Music Industry Studies. Heihachiro runs the marketing department where he handles clearance and licensing on the high profile series such as *The Hunger Games*, *The Divergent*, *The Expendables*, and more… 

Hei is fluent in Japanese, which at times has been a great asset with his various connections outside the country. In his free time, he is a freelance photographer who has an incredible eye for detail and has experience with working on a number of projects.", "HeihachiroFukuda.jpg"],

["Manager of Music Clearance and Licensing", "HALEY HANNA", "Haley Hanna was born and raised in Southern California, where she graduated from Cal State Northridge in 2013 with a Bachelor of Arts degree in Music Industry Studies. After completing a school internship at MCL Music Services she was hired on at the top of year while finishing up her degree. 

Here Haley handles the clearance and licensing process for many Lionsgate TV shows such as *Nashville*, *Orange is the New Black*, and Oprah Winfrey*s new series *Greenleaf*. In the past she has also worked on hit shows like *Mad Men*, *Manhattan*, *Nurse Jackie*, and *Weeds*. The thrill for her comes from tracking down obscure clearances that seem near impossible to decipher.

In addition to her extensive roll on the TV side she also works on various side projects such as the documentaries *Good Ol' Freda* and *Who Shot Rock N Roll*.

Along with Haley’s passion for music, whether live, recorded or singing a tune herself, she also has love for photography and just about anything creative.", "HaleyHanna.jpg"]
]

staffs_list.each do |title, name, bio, img_url|
  Staff.create( title: title, name: name, bio: bio, img_url: img_url )
end

# ******musicology page********
musicology_list = [
	["Effective Spring of 2015, MCL Music Services Inc. in conjunction with Denise Carver, Ph.D., Esq. will be able to assist clients with projects requiring the services of a professional musicologist. Musicology services will include:", 
"-	Music Copyright & Public Domain Research
-	Musical Analysis
-	Prior Art Research
-	Risk Assessment
-	Detailed Musicology and Copyright Reports
-	Genre Research: *Blues, Gospel, Spirituals, Hymns, Folk, Americana, Opera, Choral, Jazz, Classical, Global Music, etc*.
-	Providing Public Domain Music & Lyrics for Film & TV Re-records", "Musicologist", "DENISE CARVER, PH.D., ESQ.", "Dr. Carver holds a Ph.D. in music composition and is a licensed California attorney. Her experience includes four years of teaching music theory and composition at the University of California and a 23-year residence at Paramount Pictures, where as Vice President of Music she contributed to the success of more than 300 films, numerous marketing campaigns and many film soundtrack albums. 

She has worked with many highly successful directors, actors, and production companies, as well as with numerous top tier musical artists, songwriters and composers. She has also served as a speaker and panelist at a variety of music industry events.", "DeniseCarver.jpg" 
	]
]
musicology_list.each do |description, bullets, title, name, bio, img_url|
  MusicologyService.create( description: description, bullets: bullets, title: title, name: name, bio: bio, img_url: img_url )
end


# # ******client page********
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
# 	["ARCLIGHT PRODUCTIONS", "clients_logos/ArclightProductions.jpg"],
# 	["THE RAY CHARLES MARKETING GROUP", "clients_logos/RayCharles.png"]
# ]

# client_list.each do |name, img_url, description|
#   Client.create( name: name, img_url: img_url, description: description)
# end

# ***********PROJECTS**********
# films information

films_list = [
	["La La Land", "Lionsgate", "2016", "*La La Land* is a 2016 American musical comedy-drama film written and directed by Damien Chazelle. The film stars Ryan Gosling, Emma Stone, J. K. Simmons, Finn Wittrock, Callie Hernandez, Rosemarie DeWitt, and Meagen Fay.

Mia (Emma Stone), an aspiring actress, serves lattes to movie stars in between auditions, and Sebastian (Ryan Gosling), a dedicated jazz musician, scrapes by playing cocktail piano gigs in dingy bars, but as success mounts they are faced with decisions that begin to fray the fragile fabric of their love affair, and the dreams", "film_posters/LaLaLand.jpg", false],

	["The Woods", "Lionsgate", "2016", "*The Woods* is a 2016 American found footage horror film directed by Adam Wingard and written by Simon Barrett. The film follows a group of hikers in a remote forest who find themselves in danger.

Involve a group of college students on a camping trip who discover they are not alone.", "film_posters/TheWoods.jpg", false],


	["Deepwater Horizon", "Lionsgate", "2016", "*Deepwater Horizon* is a 2016 American biographical disaster thriller-drama film directed by Peter Berg, written by Matthew Sand and Matthew Michael Carnahan. The film stars Mark Wahlberg, Kurt Russell, John Malkovich, Gina Rodriguez, Dylan O'Brien and Kate Hudson. It is based on the 2010 Deepwater Horizon explosion and oil spill in the Gulf of Mexico.

A story set on the offshore drilling rig Deepwater Horizon, which exploded during April 2010 and created the worst oil spill in U.S. history.", "film_posters/DeepwaterHorizon.jpg", false],

	["Norm Of The North", "Lionsgate", "2016", "*Norm of the North* is a 2016 American 3D computer-animated comedy-adventure film directed by Trevor Wall and written by Daniel R. Altiere, Steven M. Altiere, and Malcolm T. Goldman. It features the voices of Rob Schneider as the title character, Heather Graham, Ken Jeong, Colm Meaney, Loretta Devine, Gabriel Iglesias, Michael McElhatton, and Bill Nighy.

When a real estate development invades his Arctic home, Norm and his three lemming friends head to New York City, where Norm becomes the mascot of the corporation in an attempt to bring it down from the inside and protect his homeland.", "film_posters/NormOfTheNorth.jpg", false],

	["The Perfect Match", "Lionsgate", "2016", "*The Perfect Match* is a 2016 American romantic comedy film directed by Bille Woodruff. The film was written by Dana Verde, Brandon Broussard and Gary Hardwick, and stars Terrence J, Cassie Ventura, Lauren London and Paula Patton. Queen Latifah is an executive producer on the film.

A playboy named Charlie, convinced that all his relationships are dead, meets the beautiful and mysterious Eva. Agreeing to a casual affair, Charlie then wants a bit more from their relationship.", "film_posters/ThePerfectMatch.jpg", false],

	["The Hunger Games: Mockingjay Part 2", "Lionsgate", "2015", "*The Hunger Games: Mockingjay – Part 2* is a 2015 American epic dystopian science fiction war film directed by Francis Lawrence, with a screenplay by Peter Craig and Danny Strong. It is the fourth and final installment in *The Hunger Games* film series, and the second of two films based on the novel *Mockingjay*, the final book in *The Hunger Games* trilogy, by Suzanne Collins. Produced by Nina Jacobson and Jon Kilik, and distributed by Lionsgate, the film features an ensemble cast that includes Jennifer Lawrence, Josh Hutcherson, Liam Hemsworth, Woody Harrelson, Elizabeth Banks, Julianne Moore, Philip Seymour Hoffman (in his final film role), and Donald Sutherland.

As the war of Panem escalates to the destruction of other districts, Katniss Everdeen, the reluctant leader of the rebellion, must bring together an army against President Snow, while all she holds dear hangs in the balance.", "film_posters/TheHungerGamesMockingjayPart2.jpg", false],

		["Triple Nine", "Worldview Entertainment", "2016", "*Triple 9* is a 2016 American crime thriller drama film directed by John Hillcoat and written by Matt Cook. The film stars an ensemble cast featuring Casey Affleck, Chiwetel Ejiofor, Anthony Mackie, Aaron Paul, Clifton Collins, Jr., Norman Reedus, Teresa Palmer, Michael K. Williams, Gal Gadot, with Woody Harrelson, and Kate Winslet.

A gang of criminals and corrupt cops plan the murder of a police officer in order to pull off their biggest heist yet across town.", "film_posters/TripleNine.jpg", false], 


	["The Last Witch Hunter", "Lionsgate", "2015", "*The Last Witch Hunter* is a 2015 American dark fantasy action thriller film directed by Breck Eisner and written by Matt Sazama and Burk Sharpless. The film stars Vin Diesel as an immortal witch-hunter who must stop a plague from ravaging New York City.

The last witch hunter is all that stands between humanity and the combined forces of the most horrifying witches in history.", "film_posters/TheLastWitchHunter.jpg", false]
]

films_list.each do | title, distributor, year, description, img_url, favorite |
	Film.create( title: title, distributor: distributor, year: year, description: description, img_url: img_url, favorite: favorite)
end

# tv info
tvs_list = [
	["Greenleaf", "OWN", "2016", "1", "Set against the backdrop of a family-run black megachurch. A concept straight from the heart of Oprah Winfrey: a loving tribute to her deep roots in the black church but also a resolute call to conscience for anyone using religion to exploit, denigrate, disempower, lie to, steal from, or just plain fuck with.", "tv_posters/Greenleaf1.jpg", false],

	["Guilt","ABC Freeform", "2016", "1", "An edgy, soapy thriller that revolves around an American student in London who becomes the prime suspect in the murder of her roommate. Even her own sister, who comes to London to defend her, will question how she knows her.  This mystery will twist through all layers of London society from a posh but deprived sex club all the way up to the Royals Family itself.","tv_posters/Guilt1.jpg", false],

	["Casual", "Hulu", "2015-2016", "1-2", "A new comedy series about a bachelor brother and his newly divorced sister living under one roof again. Together, they coach each other through the crazy world of dating while raising her teenage daughter.", "tv_posters/Casual1.jpg", true],

	["Feed The Beast", "AMC", "2016", "1", "A one-hour drama from executive producer Clyde Phillips (Nurse Jackie) and Lionsgate.  Based off Danish format Bankerot, Thomas, a depressed widower and single father, reluctantly teams up with indebted ex-con Dion to open the restaurant they always dreamed of having.", "tv_posters/FeedTheBeast1.jpg", false],

	["The Rap Game", "Lifetime", "2016", "1", "School is out and summer is in full swing, but for seven aspiring artists, classes are just beginning! Learning from the best in the music industry, these young rappers have the opportunity to work with Grammy winner and producer Jermaine Dupri in an all-new season of, The Rap Game. To help mentor the young teens throughout the season, Dupri enlists the support from some of the most successful artists in the music industry including iconic singer Mariah Carey and legendary rappers Snoop Dogg, Timbaland, Nelly, Bow Wow, Monica, DaBrat, Flo Rida and producers, Bryan-Michael Cox, Zaytoven and Mike Kalombo. The winner will receive a recording contract with Dupri's label, So So Def Recordings. Grammy and Emmy award winner Queen Latifah and her partner Shakim Compere are executive producers under the Flavor Unit umbrella, alongside Mechelle Collins and Kevin Dill of Intuitive Entertainment and Dupri.

Produced by Intuitive Entertainment, *The Rap Game* is executive produced Kevin Dill and Mechelle Collins (*The Millionaire Matchmaker,* *Atlanta Plastic*), Ted Iredell (*Making the Band*), Perry Dance (*Making the Band*) and co-executive produced by Adam Schor (*The Biggest Loser*). Lifetime’s Mary Donahue and Mariana Flynn also executive produce in addition to Dupri, Latifah and Compere. Filmed in Atlanta, ten episodes have been ordered for this season.", "tv_posters/TheRapGame.jpg", false],


	["Orange is the New Black", "Netflix", "2013-2016" "1-4", "The story of Piper Chapman, a woman in her thirties who is sentenced to fifteen months in prison after being convicted of a decade-old crime of transporting money to her drug-dealing girlfriend.", "tv_posters/OrangeIsTheNewBlack1.jpg", false]
]

tvs_list.each do | title, network, year, season, description, img_url, favorite |
	Tv.create(title: title, network: network, year: year, season: season, description: description, img_url: img_url, favorite: favorite)
end


# marketing info
marketings_list = [
	["Power Rangers", "2016", "Lionsgate", "*Power Rangers* is an American superhero film based on the superhero team of the same name and directed by Dean Israelite. It will be the third feature film of the Power Rangers franchise, and the first one in twenty years.

A group of high-school kids, who are infused with unique superpowers, harness their abilities in order to save the world.", "marketing_posters/PowerRangers.jpg"],
	
	["Manchester By The Sea", "2016", "Roadside Attractions", "*Manchester by the Sea* is an American drama film directed and written by Kenneth Lonergan. The film stars Casey Affleck, Michelle Williams and Kyle Chandler. Lee Chandler is made a legal guardian of his dead brother's son and returns to his hometown to care for the teenage boy.

After the sudden death of Joe Chandler, his younger brother Lee is made legal guardian of his son. Lee returns to his hometown and has to deal with both his separated wife Randi and the community of North Shore.", "marketing_posters/ManchesterByTheSea.jpg"],

	["The Shack", "2016", "Lionsgate", "The Shack is an American faith-based Christian drama film directed by Stuart Hazeldine and written by John Fusco, based on the 2007 novel of same name by William P. Young.

A grieving man receives a mysterious, personal invitation to meet with God at a place called *The Shack.*", "marketing_posters/TheShack.jpg"]
]

marketings_list.each do | title, year, distributor, description, img_url, favorite |
	Marketing.create(title: title, year: year, distributor: distributor, description: description, img_url: img_url, favorite: favorite)
end

# independent film info
indie_films_list = [

	["Jimmy Vestvood: Amerikan Hero", "2016", "*Jimmy Vestvood: Amerikan Hero* is a comedy starring comic Maz Jobrani and directed by Jon Kesselman (The Hebrew Hammer).

	A wannabe private investigator wins the Green Card lottery and moves to America to pursue his dream only to find himself embroiled in a conspiracy to start the next world war.", "indie_posters/JimmyVestvood.jpg"],

	["Geezer", "2016", "Geezer is an American comedy-drama film written and directed by Lee Kirk. The film stars Green Day frontman Billie Joe Armstrong in his first leading role, as well as Judy Greer, Selma Blair, Dallas Roberts, Chris Messina, Fred Armisen, Brian Baumgartner, Kevin Corrigan. 

An aging punk rocker copes with life after rock.", "indie_posters/Geezer.jpg"],

	["It’s So Easy And Other Lies", "2016", "Directed by Christopher Duddy, this documentary tells the lifetime story of Guns N' Roses bass player, Duff McKagan. How he struggled with alcohol and drug addiction, and overcame it. Talks about the real challenges in everyday life, his childhood, and how the band made it big.", "indie_posters/ItsSoEasyAndOtherLies.jpg"],

	["Mekko", "2015", "*Mekko* is a 2015 American drama film directed by Sterlin Harjo.  Harjo's third feature film, it is a thriller set among a community of homeless Native Americans in Tulsa.

Mekko gets out of prison after 19 years. He has no home or family so he makes his way to Tulsa. He tries to connect with a cousin but she turns him away. With nowhere to go Mekko ends up sleeping on the streets. He is taken in by the homeless native community. At times jovial, there is a dark undercurrent to the community. He begins having issues with a man named Bill. Bill is pure evil. Convinced that this man is a witch, Mekko turns to the old teachings of his grandmother in order to rid the community of this 'witch'. It's a story of redemption, and hope. Mekko is in search of his home and the strength to forgive himself of his past.", "indie_posters/Mekko.jpg"],

	["My Blind Brother", "2016", "*My Blind Brother* is a 2016 American comedy film directed by Sophie Goodhart. 

The rivalry between two brothers reaches a fever pitch during a charity swim competition.", "indie_posters/MyBlindBrother.jpg"]
]

indie_films_list.each do | title, year, description, img_url, favorite |
	IndieFilm.create( title: title, year: year, description: description, img_url: img_url, favorite: favorite)
end














