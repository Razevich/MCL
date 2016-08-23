# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])

#   Mayor.create(name: 'Emanuel', city: cities.first)
# admins = Admin.create([ {username: "admin"}, {password: "1234"} ])
# Admin.create(:username => 'admin', :password => '123')


# films = Film.create([ {title: "sample"}, {year: 1999}, {description: "blah"} ])

# rails g scaffold Tv year:integer title:text description:text img_url:text favorite:boolean


# staff seeds

staff_list = [ 
	["Owner and Founder", "MATT LILLEY", "Matt Lilley created MCL Music Services in 2009 to provide Music Clearance, Licensing, and Supervision services to the Film, Television, and Advertising communities. Previously the Director of Music Clearance in the Feature Film division at Paramount Pictures from 1996 - 2008, Matt was responsible for much of the clearance negotiating and licensing in many of Paramount’s most successful films and soundtracks over that span of time. 

	In late 2008, Matt was named Vice President of Music Clearance and Licensing at Lionsgate Entertainment (in charge of the Film, Television, and Marketing divisions of the company) which he transitioned into maintaining as his first client under the umbrella of MCL Music Services.

	Over the past several years MCL Music Services has expanded its services and now works in Music Supervision in the independent film and documentary world, Catalogue Administration, and Musicology services in conjunction with Denise Carver, Esq. of CarverMusik (http://www.carvermusik.com)

	An avid fan of jazz music, Matt is a lifelong saxophone player, performing with his jazz quartet in the greater Los Angeles area.  

	Matt holds a Master of Business Administration degree from the University of Phoenix (2003) and a Bachelor of Arts Degree in Music Industry Studies from California State University, Northridge (1997).
	", "MattLilley.jpg"],

["Director of Music Clearance and Licensing", "HEIHACHIRO FUKUDA", "Heihachiro Fukuda joined MCL Music Services after graduating, in 2010, from California State University, Northridge with a Bachelor of Arts in Music Industry Studies. Heihachiro runs the marketing department where he handles clearance and licensing on the high profile series such as The Hunger Games, The Divergent, The Expendables, and more… 

Hei is fluent in Japanese, which at times has been a great asset with his various connections outside the country. In his free time, he is a freelance photographer who has an incredible eye for detail and has experience with working on a number of projects.", "HeihachiroFukuda.jpg"],


["Manager of Music Clearance and Licensing", "HALEY HANNA", "Haley Hanna was born and raised in Southern California, where she graduated from Cal State Northridge in 2013 with a Bachelor of Arts degree in Music Industry Studies. After completing a school internship at MCL Music Services she was hired on at the top of year while finishing up her degree. 

Here Haley handles the clearance and licensing process for many Lionsgate TV shows such as ‘Nashville’, ‘Orange is the New Black’, and Oprah Winfrey’s new series ‘Greenleaf’. In the past she has also worked on hit shows like ‘Mad Men’, ‘Manhattan’, ‘Nurse Jackie’, and ‘Weeds’. The thrill for her comes from tracking down obscure clearances that seem near impossible to decipher.

In addition to her extensive roll on the TV side she also works on various side projects such as the documentaries ‘Good Ol’ Freda’ and ‘Who Shot Rock N Roll’.

Along with Haley’s passion for music, whether live, recorded or singing a tune herself, she also has love for photography and just about anything creative.", "HaleyHanna.jpg"]
]

staff_list.each do |title, name, bio, img_url|
  Staff.create( title: title, name: name, bio: bio, img_url: img_url )
end


