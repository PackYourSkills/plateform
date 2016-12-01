# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
list_quote = [
  {"quote" => "“There is nothing like looking, if you want to find something.”",
   "author" => "J.R.R. Tolkien",
  },

  {"quote" => "“You can find something truly important in an ordinary minute.”",
   "author" => "Mitch Albom",
  },
  {"quote" => "“I will find you.In the farthest corner, I will find you.”",
   "author" => "Mary E. Pearson",
  },
  {"quote" => "“Find your place on the planet. Dig in, and take responsibility from there.” ",
   "author" => "Gary Snyder",
  },
  {"quote" => "“The untold want, by life and land ne'er granted, Now, Voyager, sail thou forth, to seek and find.”",
   "author" => " Walt Whitman",
  },
  {"quote" => "“Strength is not something you have, it's something you find.”",
   "author" => "Emma Smith",
  },
  {"quote" => "“It is a true saying, that what you fear you find.”",
   "author" => " Jeanette Winterson",
  },
  {"quote" => "“Do not depend on good motivator! Find your words of self-motivation!”",
   "author" => "Toba Beta",
  },
  {"quote" => "“Negative people can only infest you with discouragements when they find you around... Just get lost and get saved!”",
   "author" => "Israelmore Ayivor",
  },
  {"quote" => "“Day after day you find a way to make this grown man cry.”",
   "author" => "Keith Urban",
  },
  {"quote" => "“I fly through memory to find a newborn love.”",
   "author" => "Dejan Stojanovic",
  },
  {"quote" => "“It was the first time she'd discovered something she really didn't want to find, and she didn't know what to do once she'd found it.”",
   "author" => "Jodi Picoult",
  },
  {"quote" => "“They could not write their names, but I can write mine, and I will again, somewhere where it will last for a long, long time. I will find Ky, and then I will find that place.”",
   "author" => "Ally Condie",
  },
  {"quote" => "“I didn't find you .. I just got tripped in your destiny ...”",
   "author" => "Rim Rafei",
  },
  {"quote" => "“Problems are meant to be solved, but unfortunately, a lot of people choose to complain, worry, and cry about them.”",
   "author" => "Edmond Mbiaka",
  },
  {"quote" => "“The best way to find anything is to look with an opened mind.”",
   "author" => "Richard Diaz",
  },
  {"quote" => "“We humans are made up of stardust. Our eyes reflect starlight. And when we crack it escapes and shines through.”",
   "author" => "Vanshika Dhyani",
  },
  {"quote" => "“If my heart is set on pursuing real treasures, my mind must be fixed solely on the privilege of enjoying them and freed of the obsession of owning them.”",
   "author" => "Craig D. Lounsbrough",
  },
  {"quote" => "“Don't worry. You'll find your message in your mess.”",
   "author" => "Richie Norton",
  },
  {"quote" => "“Find yourself, so you will find the world inside you, love yourself and you will feel the world is loving you.”",
   "author" => "Neymat Khan",
  }
]

list_address = [
  {"address" => "9 Quai du Lazaret",
   "city" => "Marseille",
   "country" => "France"
  },
  {"address" => "2-4 rue Sainte-Catherine",
  "city" => "Bordeaux",
  "country" => "France"
  },
  {"address" => "4 Boulevard Paoli",
  "city" => "Bastia",
  "country" => "Italia"
  },
  {"address" => "Via Mantova, 36",
  "city" => "Montichiari",
  "country" => "Italia"
  },
  {"address"=>"Via Curiel, 25 ",
   "city"=>"Milano",
   "country"=>"Italia"
  },
  {"address"=>"Via Roma, 82 ",
   "city"=>"Torino",
   "country"=>"Italia"
  },
  {"address"=>"Via Caduti di Nassiriya, 20 ",
   "city"=>"Rimini",
   "country"=>"Italia"
  },
  {"address"=>"Via Alberto Lionello, 201 ",
   "city"=>"Roma",
   "country"=>"Italia"
  },
  {"address"=>"Plaza de la Puerta del Sol, 1 ",
   "city"=>"Madrid",
   "country"=>"Spain"
  },
  {"address"=>"Carrer Colón, 25",
   "city"=>"Valencia",
   "country"=>"Spain"
  },
  {"address"=>"235 Regent Street ",
   "city"=>"London",
   "country"=>"United Kingdom"
  },
  {"address"=>"146 Peel Avenue",
   "city"=>"Manchester",
   "country"=>"United Kingdom"
  },
  {"address"=>"128 New Street ",
   "city"=>"Birmingham",
   "country"=>"United Kingdom"
  },
  {"address"=>"Koru Sok. No:2 ",
   "city"=>"Istanbul",
   "country"=>"Turkey"
  },
  {"address"=>"Hyllie Boulevard 19 ",
   "city"=>"Malmö",
   "country"=>"Sweden"
  },
  {"address"=>"Stora Marknadsvägen 15 ",
   "city"=>"Täby",
   "country"=>"Sweden"
  },
  {"address"=>"Grote Houtstraat 99 ",
   "city"=>"Haarlem",
   "country"=>"Nederland"
  },
  {"address"=>"Grote Houtstraat 99 ",
   "city"=>"Haarlem",
   "country"=>"Nederland"
  },
  {"address"=>"Bahnhofstrasse 77 ",
  "city"=>"Zürich",
  "country"=>"Switzerland"
  },
  {"address"=>"Freie Strasse 47 ",
  "city"=>"Basel",
  "country"=>"Switzerland"
  },
  {"address"=>"1900 Northern Boulevard ",
  "city"=>"Roslyn",
  "country"=>"United States"
  },
  {"address"=>"18 West Towne Mall ",
  "city"=>"Madison",
  "country"=>"United States"
  },
  {"address"=>" 4529 West 119th Street",
  "city"=>"Leawood",
  "country"=>"United States"
  },
  {"address"=>"7900 Shelbyville Road ",
  "city"=>"Louisville",
  "country"=>"United States"
  },
  {"address"=>"450 SW Yamhill Street ",
  "city"=>"Portland",
  "country"=>"United States"
  },
  {"address"=>"2240 Q Street NE",
  "city"=>"Albuquerque",
  "country"=>"United States"
  },
  {"address"=>"4012 Westheimer Road",
  "city"=>"Houston",
  "country"=>"United States"
  },
  {"address"=>"189 The Grove Drive",
  "city"=>"Los Angeles",
  "country"=>"United States"
  },
  {"address"=>"3035, boulevard Le Carrefour, local C14B",
  "city"=>"Laval",
  "country"=>"Canada"
  },
  {"address"=>"3401 Dufferin Street",
  "city"=>"Toronto",
  "country"=>"Canada"
  },
  {"address"=>"Avenida Vasco de Quiroga 3800",
  "city"=>"Mexico city",
  "country"=>"Mexico"
  },
  {"address"=>"ALAJUELA 20101",
  "city"=>"San José",
  "country"=>"Costa Rica"
  },
  {"address"=>"José Pedro Alessandri 1166, Ñuñoa, Región Metropolitana, Chili",
  "city"=>"Santiago",
  "country"=>"Chile"
  },
  {"address"=>"Andrés Bello 2425, Santiago",
  "city"=>"Santiago",
  "country"=>"Chile"
  },
  {"address"=>"Av. Pdte. Kennedy Lateral 5413",
  "city"=>"Santiago",
  "country"=>"Chile"
  },
  {"address"=>"Av. Colombo, 9161",
  "city"=>"Maringá",
  "country"=>"Brasil"
  },
  {"address"=>"Av. Roque Petroni Júnior",
  "city"=>"São Paulo",
  "country"=>"Brasil"
  },
  {"address"=>"Av. Pres. Nilo Peçanha, 211",
  "city"=>"Bessa",
  "country"=>"Brasil"
  },
  {"address"=>"Av. Colombo, 9161",
  "city"=>"Maringá",
  "country"=>"Brasil"
  },
  {"address"=>" Av. Roque Petroni Júnior, 1089 - Vila Gertrudes",
  "city"=>"São Paolo",
  "country"=>"Brasil"
  },
  {"address"=>"José de Goyechea 2851",
  "city"=>"Córdoba",
  "country"=>"Argentina"
  },
  {"address"=>" Ayacucho 1184",
  "city"=>"Buenos Aires",
  "country"=>"Argentina"
  },
  {"address"=>"Calle Benito Juárez No.1102",
  "city"=>"Monterrey",
  "country"=>"Mexico"
  },
  {"address"=>" Blvd. Gral. Marcelino García Barragán 2077",
  "city"=>"Guadalajara",
  "country"=>"Mexico"
  },
  {"address"=>" Blvd. Kukulcan KM 12.5",
  "city"=>"Cancún",
  "country"=>"Mexico"
  },
  {"address"=>" 367 George St",
  "city"=>"Sydney",
  "country"=>"Australia"
  },
  {"address"=>"190 Barkly St",
  "city"=>"Melbourne",
  "country"=>"Australia"
  },
  {"address"=>" 619 Doncaster Rd",
  "city"=>"Melbourne",
  "country"=>"Australia"
  },
  {"address"=>"148 Bunda St,",
  "city"=>"Camberra",
  "country"=>"Australia"
  },
  {"address"=>" 790 Hay St",
  "city"=>"Perth",
  "country"=>"Australia"
  },
  {"address"=>" 159, Avenue Annakhil",
  "city"=>"Rabat",
  "country"=>"Marocco"
  },
  {"address"=>"204 Florida Rd",
  "city"=>"Berea",
  "country"=>"South Africa"
  },
  {"address"=>"57 Rissik St",
  "city"=>"Johannesburg",
  "country"=>"South Africa"
  },
  {"address"=>" 3d Peponi Plaza",
  "city"=>"Nairobi",
  "country"=>"Kenya"
  },
  {"address"=>"3 Ibn El Nabih Street",
    "city"=>"Zamalek",
    "country"=>"Egypt"
    },
  {"address"=>"16 rue Raharinosy Andohalo",
  "city"=>"Antananarivo",
  "country"=>"Madagascar"
  },
  {"address"=>"Rue Mohamed HABBOU",
  "city"=>"Alger",
  "country"=>"Algeria"
  },
  {"address"=>"Rua Hélder Neto 87",
  "city"=>"Luanda",
  "country"=>"Angola"
  },
  {"address"=>"5 Jack Martens Dr",
  "city"=>"Westiville",
  "country"=>"South Africa"
  },
  {"address"=>"G17 Accra Mall",
  "city"=>"Accra",
  "country"=>"Ghana"
  },
  {"address"=>"02 R A De Mel Mawatha",
  "city"=>"Colombo",
  "country"=>"Sri Lanka"
  },
  {"address"=>"70-72 Stanly Rd",
  "city"=>"Jafna",
  "country"=>"Sri Lanka"
  },
  {"address"=>"148, Aluthmawatha Road",
  "city"=>"Colombo",
  "country"=>"Sri Lanka"
  },
  {"address"=>"1 Harbourfront Walk",
  "city"=>"Singapore",
  "country"=>"Singapore"
  },
  {"address"=>"122 Trần Duy Hưng",
  "city"=>"Hanoi",
  "country"=>"Vietnam"
  },
  {"address"=>"109 Mai Hac De",
  "city"=>"Hanoi",
  "country"=>"Vietnam"
  },
  {"address"=>"S309-S310 1 Utama Shopping Center",
  "city"=>"Bandar Utama",
  "country"=>"Malaysia"
  },
  {"address"=>"Pragati Ave",
  "city"=>"Dhaka",
  "country"=>"Bangladesh"
  },
  {"address"=>"Manuel A. Roxas Hwy",
  "city"=>"Ángeles",
  "country"=>"Philippines"
  },
  {"address"=>"2nd St, Pasig",
  "city"=>"Manilla",
  "country"=>"Philippines"
  },
  {"address"=>"23 ADB Avenue",
  "city"=>"San Antonio",
  "country"=>"Philippines"
  },
  {"address"=>"  Plaza Medan Fair Lantai 1 No. 97",
  "city"=>"Medan",
  "country"=>"Indonesia"
  },
  {"address"=>" Jalan Ahmad Yani No. 37",
  "city"=>"Makassar",
  "country"=>"Indonesia"
  },
  {"address"=>" Jl. Jambore No.1",
  "city"=>"Jakarta",
  "country"=>"Indonesia"
  },
]

mission_list = [
  {"description"=>"New Hope for Cambodian Children opened in late 2006, ‘Our Village’ is an 18 acre property located in Kampong Speu Province that provides a full range of housing, nutritional, health and educational needs to orphaned and abandoned children impacted by HIV/AIDS.","mission"=>"Feed a Cluster House NHCC","other_comment"=>"Through donations, the school has expanded to 17 dedicated classrooms and continues to expand so the older students can attend full-time."},
  {"description"=>"Bong Sen (meaning ‘Lotus Flower’ in Vietnamese) Foundation is a new Vietnamese non profit organization that formally commenced in March 2016. Bong Sen has six local, Phu Yen-born people with a background in agriculture, education, and social work. We believe that local people have greater motivation to inspire change in their own community.","mission"=>"Give Vietnamese Women in Poverty a Life Choice","other_comment"=>"Our systematic approach refers to the “final beneficiaries”, this approach can also be seen as a “model of action” addressing those actual needs of women and girls. The girls and women will be supported in a systematic way, involving parents, family members, the community and relevant local stakeholders."},
  {"description"=>"These orchids, despite their name, are not common and are considered a ‘significant’ species in the Nillumbik shire. Due to heavy predation and trampling from mammals, such as deer and kangaroos this species is at risk of being wiped out in the Dunmoochin area.","mission"=>"Fencing a Significant Orchid Species","other_comment"=>"In fact, trampling, as depicted in the picture, will almost certainly wipe out the largest known population of Common Ruddy Hood orchids in the Dunmoochin bush if this population is not fenced."},
  {"description"=>"Yet humanity evolved in nature – we love our home and we know this deep in our hearts. So how do we convert this innate love for life into a better world, where we remain true to our inventiveness and inner sense of respect for the ecology of the planet?","mission"=>"City Living, Nature Calling","other_comment"=>"The problem of climate change is here – but the solutions are too! Help us make this film series and we will show the positive things that are happening."},
  {"description"=>"Rural landless peasants are extremely vulnerable to climate change impacts, forcing migration from flooded and drought-effected fields. Landless women are specifically more vulnerable to these hazards since they often have economic reliance on men and face gender-based discrimination and exploitation.","mission"=>"Support Climate Justice in Bangladesh","other_comment"=>"80% of Bangladeshis are dependent on agriculture for their livelihoods. Already under enormous strain, they face increasing threats due to climate change and speculation in agricultural commodities."},
  {"description"=>"Following our research in Lagos in January, we are returning to Nigeria to provide the first-ever recycling service in slum communities. Wecyclers gives low-income households a chance to recycle by providing convenient collection services and offering incentives to participate.","mission"=>"Launch a recycling pilot in Lagos, Nigeria","other_comment"=>"From August through December 2012, Wecyclers will run a pilot recycling program in the community of Itire in Lagos, Nigeria."},
  {"description"=>"Inspire was founded in 2014 as an arts and events organization with the aim of providing both Bahraini nationals and expatriates of all ages with opportunities to improve their individual and team performance across a broad spectrum of activities, courses, and events. It is our aim to inspire and empower this generation and the next to step outside their circumstances and into their destiny.","mission"=>"Empower Bahrain Youth Through Performing Arts","other_comment"=>"At Inspire, we want to give our students and clients that extra ingredient that sets them apart and puts them one step ahead of the competition. We believe that this extra ingredient is the ability to perform."},
  {"description"=>"A majority of people are becoming increasingly aware of our environmental impact and are willing to change their daily habits through actions such as reducing plastic bags, saving water and using public transport. A huge and often overlooked source of pollution is the choice of food that we buy each day.","mission"=>"Backyard Urban Farming Project in Brisbane","other_comment"=>"Our current food system is not only unnecessarily damaging our planet, but is also reliant on a complicated and fragile web of fossil fueled transportation. To look at the volatile nature of the worlds economy, it seems dangerous to let access to food, one of the things vital for us to survive, be entirely dependent on whether we can get oil at a reasonable cost."},
  {"description"=>"The goals are to promote long-lasting food security by physically working alongside Orphanage caretakers, teaching them more effective farming methodologies as well as by introducing crop variety to improve nutrition amongst the kids in the Orphanage. ","mission"=>"Thai Orphanage Food Security","other_comment"=>"Recently, the Sustainable Harvest volunteers were able to sit down with the founder of the Orphanage in Mae Tawo, Thailand, and she was extremely supportive and excited for these projects to move forward. "},
  {"description"=>"The HaitiCoF project is an organic mini-farm. We are tilling approximately 1 acre of land and planning to purchase starter plants for a variety of vegetable and root crops which will serve two purposes: 1) to afford women an opportunity to work the farm, sell produce and related farm products, and thus, afford to care for their children who have been removed from abusive orphanages and 2) to subsidize the HCOF family house food costs.","mission"=>"Farming for Families in Haiti","other_comment"=>"We are planning to plant rotation vegetable and root crops for sale in our local community where fresh produce is NOT available."},
  {"description"=>"Red Eye Gravy Theatre Company presents Romeo & Juliet. Romeo & Juliet is the most famous love story ever told. Why can't the greatest love story be about a young, gay couple? In our production, Romeo will be played as a woman.","mission"=>"Launch Romeo and Juliet to Fight Homophobia","other_comment"=>"Having the title characters be a gay couple is not only socially innovative, but speaks to our cause of promoting awareness about gay teens being bullied and resorting to suicide"},
  {"description"=>"Many women arriving and seeking asylum in Australia are among the most disadvantaged in our community. Often illiterate in their own language and with very little (if any) English they face HUGE barriers with finding their way in western culture. ","mission"=>"Work Empowers Women","other_comment"=>"SisterWorks is a grass-roots not-for-profit that provides a support network to women who arrive in Australia in very difficult circumstances. We are a bottom-up social enterprise, founded by our Executive Officer Luz Restrepo, a political refugee from Colombia. "},
  {"description"=>"I created a nonprofit organization called Chengeta Wildlife and asked friends of Rory Young on Quora.com to join. Our board members are from ten different countries. It is a beautiful thing to be united in a cause with people from around our world. It shows that it doesn't matter where you live or what your culture, religion, age, sex, or ability is. ","mission"=>"Terrorists Are Targeting Africa's Elephants","other_comment"=>"I could never stand by and watch bullying of children or helpless animals. This was so much worse than bullying."},
  {"description"=>"In May 2016, a member of the youth slam team that I have coached for the past 7 years, shared with me 5 poems he'd recently written. We always discussed, as a team, the importance of writing beyond competition season as much as we discussed the importance of writing who we are and our most authentic experiences regardless of competition.","mission"=>"Empowering Teen Authors & Teen Publishers","other_comment"=>"The Teen Chapbook Series is one of Revolving Door's first youth initiatives which publishes teen writing at the manuscript level through peer-editing and curation, and connection to established writers."},
  {"description"=>"In 2008, Small Art School (SAS) started as a self-financed art school, founded by a Japanese art teacher - Tomoko Kasahara, with the aim to provide free art education to underprivileged Cambodian children, especially to those children who have the will to learn but lack the opportunities to learn.","mission"=>"Free Art Lessons for 350 Cambodian children","other_comment"=>"For the last 20 years, Tomoko has been saving funds to open and run an art school for Cambodian children. The school construction started in 2007 and, ayear after, in 2008, she finally has a chance to open the doors of her Small Art School for the children who have a strong desire to learn but lack opportunities to do it."},
  {"description"=>"José Maria Viana Guedes, a regional police officer from Ponta Porã, originally founded the Association Camará Capoeira. Since, his mission is to offer perspective to children and adolescents, to educate them preparing integration in the labour market and to keep them from the streets and the vicious circle of drugs and violence.","mission"=>"Planting the Future","other_comment"=>"Besides our focus project, we want to carry on the tradition from prior Planting the Future teams and visit a foster home in Pedro Juan Caballero. We will not only do an excursion with the children living there but bring essential material and supplies to easen the every-day challenges on site."},
  {"description"=>"The mission of the Awareness Network is simple: educate sufferers and their families about a wide range of anxiety disorders and promote treatments, resources, and support for those impacted. Over the last year, we’ve incorporated with the State of Montana, launched a popular Facebook page and website, and have begun meeting with community leaders throughout the state.","mission"=>"Help Launch the Awareness Network","other_comment"=>"People with an anxiety disorder are three to five times more likely to go to the doctor and six times more likely to be hospitalized for psychiatric disorders than those who do not suffer from anxiety disorders."},
  {"description"=>"It's May 27, 1967 – Australia's referendum on Aboriginal rights. Two women unite as a family come to terms with the prospect of change. VOTE YES is a story that follows a family as they prepare to head to the polls. ","mission"=>"Vote Yes - Ignite The Power of Collective Voices","other_comment"=>"VOTE YES celebrates the achievement of 1967 without glossing over the racism and sexism, which continued, and continues, to exist within Australian society."},
  {"description"=>"Key to FOF's success is its promise to continually refine the design of events that inform and inspire people to adopt more sustainable behaviours at home and work, and in their communities. To boost effectiveness and enjoyment, we use tactics and tools from the emerging fields of social learning, stakeholder engagement, and behaviour change.","mission"=>"Inspiring Collaborative Intelligence","other_comment"=>"In keeping with its passion for information exchange, FOF will share what's learned with other communications and sustainability professionals, interested individuals, FOF supporters, and StartSomeGood donors through blog posts, videos, and webinars. "},
  {"description"=>"Identidad Vecinal was founded in 2006, with the goal to improve the general living conditions of the people living in La Matanza. Since its creation, the size of the population of this neighbourhood has not stopped increasing and generates even more poverty.","mission"=>"Identidad Vecinal - A Forgotten Community","other_comment"=>"The goal is to provide Identidad Vecinal with a proper hospital. If achieved, the nurse will be able to take care of the 500 families of the community, and more specifically the 800 kids who need medical attention."},
  {"description"=>"Adelaide Bike Kitchen (ABK) provides an open space where you can learn to fix your bicycle. We receive donations of bicycles and parts, and hold weekly workshop sessions where volunteers teach you how to maintain your bike (or even build one from scratch!).","mission"=>"Adelaide Bike Kitchen - Bikes for good","other_comment"=>"Make your pledge and enjoy the rewards! If you like what we’re about share this page with your friends and spread the word to get this project off the ground."},
  {"description"=>"Schools, teachers and organizations are extremely busy and strapped for funds. KTK gives students an opportunity to experience learning that fosters collaboration using core curriculum combined with the ARTS. In just one FREE workshop, teachers and assistants  experience the KTK interactive, collaborative methods.","mission"=>"Empowering Kids to Communicate About Social Issues","other_comment"=>"Through the display of their work, the students are empowered to continue the process, knowing their voices will be heard in their communities, thus raising awareness of social issues and promoting change."},
  {"description"=>"CO-ED is a youth organisation, uniting, inspiring, and empowering youth and young adults to become changemakers in this world. We believe that true leadership comes from the inside out. Leading ourselves with integrity is the first step to becoming impactful leaders of our communities, our countries and our world.","mission"=>"CO-ED: Creating Opportunity - Embracing Diversity","other_comment"=>"In Australia alone, 40,430 children are abused each year, whether that be physical, emotional, mental, or sexual. Abuse and neglect as a child is a significant cause of depression and suicide in adults"},
  {"description"=>"Dance music is a cultural movement, it brings people all ages together from different backgrounds, they’re tolerant and respectful to each other on the dance floor, and they take that energy home. That is itself a political statement. ","mission"=>"Let The People Dance","other_comment"=>"By supporting this project and helping us continue to hold this workshop with I-Manifest and Electronic Music Conference you are showing YOU are the change-makers of today and helping create the change-makers of tomorrow."},
  {"description"=>"We want to encourage people to think beyond themselves and have a heart for serving others. We also want to help people who have been affected by disaster or just bad luck get a leg up. We believe society is stronger when the people in it are stronger.","mission"=>"Crisfield2","other_comment"=>"Our ultimate goal is to be able to continue to provide trips like these for volunteers who, while serving in a place different from where they live, are also changed and encouraged to make a difference in their own communities when they get back."},
  {"description"=>"People with disabilities in Cambodia are a forgotten population. Within this group, there is an even more forgotten population, and that is those with communication and swallowing problems. I've seen first hand the changes that can be made to these lives through Speech Therapy in the UK.","mission"=>"Help give 600,000 people in Cambodia a voice","other_comment"=>"Right from the start, the onus is on Cambodian people to implement this knowledge into practice. This project is all about Cambodians helping other Cambodians through sustainable systems."},
  {"description"=>"In January 2015 we will be taking technology equipment like laptops and tablets to impoverished vulnerable children in war torn Uganda.  Our efforts will help turn the tables on poverty and sickness in a land where the life expectancy is only 17.","mission"=>"Bring Khan Academy to Rural Ugandan Orphans","other_comment"=>"If you are looking for a way to give back, go to where people are already moving and join in.  Join our campaign and give generously towards bringing hope and a future to those who need it the most."},
  {"description"=>"The program is used as a vehicle to engage at risk children and young people, to connect them to peer support and mentoring and instill in them the value of health, fitness and positive engagement in society. ","mission"=>"Kool Kids Start Some Good","other_comment"=>"Weave Youth & Community Services values and supports youth participation and ideas that drive change and create social impact."},
  {"description"=>"Fusion Sydney South are a group of hard-out Youth Workers. Made up of 3 Polynesians, 2 Lebanese and an Asian, they ARE the young people they work with in Canterbury - but grown up! Coming from a strong desire to give the community a VOICE, they birthed the YouTube channel - STREET SMARTZ: The dream of creating an official platform for Young Canterbury to change the future.","mission"=>"Young Canterbury to Change the Future","other_comment"=>"In addition to being part of an artistic community, they establish a self-discipline that will help them reach their fullest potential in life. "},
  {"description"=>"The Pre-Collegiate Program of Yangon admits students based on the size of their potential and not their bank account. Myanmar students of all classes and creeds join us after they graduate from high school, learning to scrutinize their attitudes and examine their communities through on-campus courses and field trips throughout the country.","mission"=>"Help Myanmar Students Access Global Education","other_comment"=>"The 2015 elections have ushered in a new landscape of possibilities for the country and now, more than ever, Myanmar will need educated and caring young leaders to fashion meaningful and sustainable policies, initiatives, and institutions to serve the nation."},
  {"description"=>"The coaching and mentoring doesn't stop when the soccer balls and cones are picked up.  If we can give our players confidence to try again on the field, then it is our goal to empower them with that strength in their daily lives.","mission"=>"Building Hope and Community For Youth Thru Soccer","other_comment"=>"We all remember how tough it was to fit in as a teenager- multiply that by 10 for our foreign born players.  How can your life experience motivate/inspire this generation?"},
  {"description"=>"During a visit to the Island of Aituaki in 2015, we met with local village elders, the Mayor, church leaders and the principal of the only high school. They were all in unanimous agreement that the island's youth were in need of leadership training, to help them contribute to their community and give them the skills needed to succeed if they chose to travel and work abroad.","mission"=>"Training Future Leaders of Aitutaki","other_comment"=>"Our mission at Future Leaders NZ is to - Make our world a great place to live. One of the ways we do this is by developing people. Already working in the youth sector and having an effective leadership training program, we knew that we could make a difference to the young people of Aitutaki."},
  {"description"=>"As the Mayom family from South Sudan arrived in Newcastle, Australia, they moved in across the road from a 16 year old Conor Ashleigh who had just returned from a life changing trip to Cambodia.","mission"=>"Refugee and Migrant Youth Tell Their Stories","other_comment"=>"Conor Ashleigh a documentary photographer and filmmaker based in Sydney, Australia. Conor works on assignments and personal projects throughout Australia and around the world. "},
  {"description"=>"This June we are taking a small group of people on a walk through the villages surrounding Baguia in Timor Leste following the reforestation trail of the exemplary organisation With One Seed. With One Seed were recently approached by the local community to help them in develop a hike and expand opportunities for employment in the region through Eco tourism.","mission"=>"Water Filters for remote Timor Leste","other_comment"=>"We will use a bucket system filter assembled from Sawyer Products which are super easy to assemble and operate and can produce anywhere from 100-500 gallons per day depending on the water pressure and how dirty the water is."},
  {"description"=>"This project is led by the young people in the City of Fremantle and other metropolitan communities in Western Australia to make positive, sustainable change now. Imagine giving young people a voice. Well, I am one of those voices, I am a Millennium Kid, and that's exactly what the organisation Millennium Kids Inc is all about.","mission"=>"One Thousand Actions for the Planet","other_comment"=>"We already have 15 schools on board who have put their hands up to be part of One Thousand Actions for the Planet. Together we will work to give young people a voice, identify issues and opportunities for change in their schools."},
  {"description"=>"Did you get books under your Christmas tree? Did you have some school getaways in the Nature, learning how the ecosystem works, and your teacher or parents educating you about rubbish bins and recycling? If so, you were luckier than the 85 millions of Indonesian children growing up without any environmental education and reading culture.","mission"=>"Help Us to Fund 20 Eco-Libraries in Indonesia!","other_comment"=>"The problem is that most of the 85 millions Indonesian children are growing up without environmental education… While if we often say that education is a key for the kids to create their professional future, we often forget to the importance to educate them on how to preserve their living environment without which a good job is of no use."},
  {"description"=>"We will work with our Haitian university friends to install a 5-7kW solar power system at L’école Galilean, a local school in Port-de-Paix, Haiti. The solar power system will provide clean energy to the school and will also power an Integrated Energy Center (IEC), or a solar hub for short. The solar hub will provide for basic energy services to the surrounding community.","mission"=>"Solar Hub for Haiti","other_comment"=>"A local entrepreneur or selected member of the community will manage the solar hub. Members of the community can easily pay for these services using Mon Cash, a well-known mobile money transfer service powered by Digicel in Haiti"},
  {"description"=>"Watt2Water is a device for purifying dirty water to make it safe for drinking. The dirty water is first taken into the machine and passed through two filters, this helps to remove impurities. The water is then pre-heated by the sun and moved into Watt2Water’s innovative low temperature evaporation tank.","mission"=>"Watt2Water - an off grid solar water purifier","other_comment"=>"Watt2Water is still in the development phase. We need your help to make it a reality. We have come so far in getting the design to where we are now, but we now need your help in getting the first unit made. Once the first rig has been completed, the design can be refined and put into production."},
  {"description"=>"For many years, we have been witnesses to a very sad scenario: what was once wildlife habitat and 'density reduction areas' have been rezoned for high-density residential use. The wildlife has nowhere to go as vast amounts of critical habitat areas are being destroyed at an alarming rate.","mission"=>"Cypress Cove Conservancy's Land Acquisition","other_comment"=>"We will be working closely with local environmental groups and identifying critical lands for purchase. We are working on listing critical parcels of lands that need to be acquired. We have already identified a specific piece of land, which will be targeted first."},
  {"description"=>"North America is facing a dangerous shortage in young people interested in farming. Farmers are retiring and selling off their land. Small organic farmers face an even tougher struggle to get started, stay in business and stave off developers.","mission"=>"Organic Farm Tour Fuel Fund","other_comment"=>"Our goal is to collect together information from successful organic farmers on how to be successful too, a task that has never been completed on the vast scale that we want to do. We want to give young organic farmers the best chance possible."},
  {"description"=>"We believe a big part of learning is practicing what you learn, therefor our education is built on theory and practical training. During our one year program our students will have classes in entrepreneurship, English & mathematics with the core interest of teaching how to start and maintain a business.","mission"=>"Made in Nepal - Made to Change","other_comment"=>"After almost one year of hard work & dedication we reached a major milestone. Our first tailors started up their own businesses in their home villages, which confirmed that our idea worked. We are now ready and eager to give more women the same possibility."},
  {"description"=>"Enterprise Learning Projects (ELP) works in partnership with remote Aboriginal communities to develop inclusive, creative and sustainable enterprise-based initiatives that support family and community goals.","mission"=>"Connect Remote Aboriginal Entrepreneurs to Markets","other_comment"=>"Wider Australia and the rest of the world are missing out! There are amazing and unique products being produced in remote Aboriginal communities – soaps, photos, calendars, t-shirts, sculptures, drawings, postcards, prints, bags and digital media products, just to name a few. "},
  {"description"=>"This campaign is about leveraging what we have already established. As a partnership with Nangi women's group, we hand make Lokta paper and a range of boutique blank journals. The intention of this is to support the community and most importantly, it's higher secondary school. In the last 3 years we have trained and employed more than 15 women.","mission"=>"Continued Support for Nepali Women and Education","other_comment"=>"This campaign will enable the capital to fulfill and grow long term market opportunities. White Circles is about supporting, we are choosing to allow our customers to have access to the Nangi resource in the easiest possible way."},
  {"description"=>"An estimated five million Congolese have lost their lives due to extreme poverty and conflict since independence in 1960. Today, families continue to struggle because of the country’s economic instability, an outdated education system, and an acute lack of government support and integrity.","mission"=>"Connecting Congolese Artisans & Global Consumers","other_comment"=>"Our mission is to create and empower sustainable artisan cooperatives across the Congo. We will accomplish our goal, with your support, by connecting Congolese artisans to global consumers so that families and communities can thrive!"},
  {"description"=>"ABCD Bollywood is a social enterprise that is an initiative of Indian Support Centre (ISC). ISC works with victims of domestic violence to empower them and instill positive spirit and also develop programs for creating loving and peaceful families without violence.","mission"=>"ABCD Bollywood Dances in a Change","other_comment"=>"ABCD will run a 3-month pilot for the dance classes for local office workers by hiring a community hall in the Parramatta CBD for 2 days a week and four hours per day, hiring a dance teacher and marketing the classes through a website."},
  {"description"=>"GOODRUN has an online tracking database for all activity with an incentives system to motivate and encourage. Online GOODRUN also supplies a nutrition component with health and fitness lesson plans.","mission"=>"Help launch GOODRUN and get our youth healthy","other_comment"=>"All funds raised will be used to develop the online tracking database. Once the database is developed schools will be registered in the GOODRUN program and can commence running and tracking their kilometres online."},
  {"description"=>"Quite simply, we want to open a shop. This desire is driven by two factors. First and foremost, we want to provide greater retail reach for our products in order to grow Khmer Creations and continue our mission. We also want our customers to have the most enjoyable experience possible by curating the best of Cambodia’s ethical handmade products, all in one fashionable boutique!","mission"=>"Khmer Creations' Ethical Boutique","other_comment"=>"Khmer Creations is a creative and sustainable business that produces handmade jewellery and accessories. We are driven by our economic goal to succeed as a sustainable and viable business, and our social goal to empower Khmer women through financial independence and life skills."},
  {"description"=>"The Jamnya Primary & Secondary Schools consists of 400 students and 14 teachers, the majority of student’s board at school, using classrooms as sleeping dormitories. Teacher’s accommodation consists of small, dilapidated bamboo thatched structures. Sewage and waste water from the school and teaches quarters drain into a creek on the western periphery of the villages.","mission"=>"Sustainable Housing Skills Training Workshop India","other_comment"=>"To date, the design is complete and we have pressed more than 5000 eco bricks, played a lot of cricket, eaten a lot of dahl, undertaken significant community consultation and training, and began the construction of the walls on the house which are now shoulder height."},
  {"description"=>"In the last 6 years I have made 25 trips to East Africa and Asia, flown the equivalent of 9 times round the world, spent more than 8 months abroad documenting the work of 10 small charities and gifted over 40,000 photos to those charities.","mission"=>"Taking Pictures, Changing Lives","other_comment"=>"Visual stories help charities be accountable to donors and stakeholders to show the effects that their giving is having, providing context, documenting incredible stories of changed lives and ultimately raise more money for the charities."},
  {"description"=>"The Kinyei social enterprises (Kinyei Cafe and Soksabike Tours) do not rely on donations and were set up with the bare minimum outside resources. However, for the next step, we'll need your help.","mission"=>"Coffee Cycling and Community","other_comment"=>"The curriculum we are collating will incorporate existing management training materials and social enterprise tool kits, and will draw on industry experts in social business, finance, communications, hospitality and customer service, as well as sustainable tourism leaders. "}
]


packer_info = [
  {"first_name" => "Alice","last_name" => "Decko","youtube" => "https://www.youtube.com/watch?v=vwsfyiKkg0k"
},
  {"first_name" =>"Yann","last_name" =>"Irbah","youtube" => "https://www.youtube.com/watch?v=1SkeJ5fzk6Q"
},
  {"first_name" => "François-Xavier","last_name" => "Abraham","youtube" => "https://www.youtube.com/watch?v=MWLpdYAaTzk"
},
  {"first_name" => "Gabriel","last_name" => "de Vareilles","youtube" => "https://www.youtube.com/watch?v=bKwZMNfGoCM"
},
  {"first_name" => "Peter","last_name" => "Dinklage","youtube" => "https://www.youtube.com/watch?v=KgGNhbN3JPY"
},
  {"first_name" => "Hirohime","last_name" => "Zenguwa","youtube" => "https://www.youtube.com/watch?v=F4kf0PhtZTQ"
},
  {"first_name" => "Harry","last_name" => "Wu","youtube" => "https://www.youtube.com/watch?v=hoWcO3N5A3E"
},
  {"first_name" => "Erica","last_name" => "Matthews","youtube" => "https://www.youtube.com/watch?v=kSOnZZgunMM"
},
  {"first_name" => "Gerard","last_name" => "Leferrier","youtube" => "https://www.youtube.com/watch?v=8JIuTagYk2o"
},
  {"first_name" => "Delphine","last_name" => "Scheepers","youtube" => "https://www.youtube.com/watch?v=xxdZrhf0B2E"
},
  {"first_name" => "John","last_name" => "Hawky","youtube" => "https://www.youtube.com/watch?v=NOziia8_B2c"
},
  {"first_name" => "Martin","last_name" => "Debrunne","youtube" => "https://www.youtube.com/watch?v=g_p0Ymuy_-U"
},
  {"first_name" => "Anabella","last_name" => "Difrozzione","youtube" => "https://www.youtube.com/watch?v=2dTfD7mV8tM"
},
  {"first_name" => "Alan","last_name" => "Cruz","youtube" => "https://www.youtube.com/watch?v=d0b9ION-xjY"
},
  {"first_name" => "Mitomo","last_name" => "Doe","youtube" => "https://www.youtube.com/watch?v=PKTb8HWGtvw"
},
  {"first_name" => "Jessica","last_name" => "Ohara","youtube" => "https://www.youtube.com/watch?v=yzDz1k1CF8Y"
},
  {"first_name" => "Maya","last_name" => "Labissière","youtube" => "https://www.youtube.com/watch?v=bIHNNLQAarg"
},
  {"first_name" => "Linnea","last_name" => "Soljstroom","youtube" => "https://www.youtube.com/watch?v=cU9NzXMG7Xk"
},
  {"first_name" => "Anthony","last_name" => "Davis","youtube" => "https://www.youtube.com/watch?v=SmLZEZvX_bk"
},
  {"first_name" => "Ayanna","last_name" => "Namaji","youtube" => "https://www.youtube.com/watch?v=AusZG6k87NQ"},
]

packer_story = [
  {"story"=>" Process analisis of the different payment schemes (depending on the type of subsidie, and on the department concerned) - Realization of various interviews with: people working in the ODEADOM, people working in the different overseas departments and doing the first appraisal of the subsidies requests and with the professionals concerned by those subsidies", "job"=>"Tropical Forest and Natural Resources Manager", "education"=>"AgroParisTech - Institut des sciences et industries du vivant et de l'environnement - Master's degree , ENGREF - Tropical Forest and Natural Resources Management"},
  {"story"=>"When creating my designs, my main goal is to keep my designs unique and to my personal style clean and modern. When creating design work I always let my client imagination play a huge role in my design work, whether it be character, print and layout designs. In the graphic design industry branding, illustration, and advertising.","job"=>"Graphic designer","education"=>"Throughout the years I have work in all three categories, learning and practicing as much as possible. There's always innovation in the graphic design industry I always try to stay on top of things as much as possible."},
  {"story"=>"The Collective is a progressive and innovative, lifestyle rental and co-working brand which aims to ease pressure on the London housing/ working market, by pioneering a new form of high quality, shared living and working for young professionals, at affordable prices.","job"=>"Community and Events Manager","education"=>"Skills acquired: Event management, web design, project management and leadership, marketing through social media-using monitoring tools such as Meltwater, lead generation tactics, copy writing, in depth knowledge of methods of business continuity, brainstorming and designing marketing collateral."},
  {"story"=>"Skilled in a variety of fields including HR, Reatil, project management and aerospace. Looking for a career with a community focus.My focus for the last several years have been around developing the potential of aboriginal persons. I understand the difficulties faced by aboriginals in securing meaningful work and the challenges so many of our youth face.","job"=>"Community Development Coordinator","education"=>"BIZ is the friendly and hardworking host that improves the perception of downtown by providing a welcoming environment, keeping things clean and safe, and advocating for continuous and positive change."},
  {"story"=>"Business and project developer with international experience in operations and management in challenging environments. My holistic approach to innovation and project design in emerging markets - where i've been implementing high-performance projects from origination to that of fully functional portfolios - made the ideal proving ground for my work as a business developer.","job"=>"Business and project developer","education"=>"The CCEF (French Foreign Trade Advisors) and Ubifrance (the French agency for international business development) organized the Grand Prix VIE 2012 to promote the expertise, efforts and personal engagement of young international trainees."},
  {"story"=>"A highly resourceful, innovative, and competent PHP developer (9y) with extensive experience in the layout, design and coding of websites and web applications specifically in PHP format. Possessing considerable knowledge of the develoment of web applications and scripts using PHP programming language and Mysql databases, NoSQL and cachers like memcached or Redis.","job"=>"Web developer","education"=>"Some applications that i use daily: Docker, Symfony2, PHPUnit, Behat, Mink, Phantomjs, Selenium, MongoDb, MySQL, Logstash, Elasticsearch, Kibana, Nginx, Centos, Php-fpm, Mongo, Javascript, Grunt, Gulp, Node"},
  {"story"=>"Started a new line of energy services for the property and construction industry and leading this service line. My main responsibilities consist of: Identifying business development opportunities and working alongside the marketing team to promote the services. Producing fee proposals and tender responses on energy-related projects","job"=>"Sustainability & Energy Consultant","education"=>"Energy and sustainability audits, strategies and action plans to identify and assess opportunities in energy efficiency, renewable energy investments as well as risks resulting from the regulatory and technical contexts"},
  {"story"=>"I have extensive consumer PR and marketing experience in the United States and the UK, managing clients in the food, drink and lifestyle sectors. I specialise in coordinating national media relations and social media campaigns for restaurants, retail brands and culinary personalities. Having worked in-house and for agencies in London and New York.","job"=>"Head of Marketing","education"=>" am head of marketing at Pho, the award-winning Vietnamese restaurant group with 20 restaurants in the UK. Specialties: public relations, social media strategy, marketing, new business development, media relations, writing"},
  {"story"=>"I completed two certifications in Social Media Marketing and Marketing Management. I enjoy creating digital media campaigns and online marketing strategies. I can operate tools like HubSpot, Wordpress, Canva, Google Analytics, Google Ad Words and Google page speed. Also SEO tools like Screaming Frog.","job"=>"Digital Marketing Manager","education"=>"Hold an MBA in Media and Entertainment. I have great exposure in the Media Industry as I have worked in Radio, PR, Films, Print and Television. I am passionate about building new relations and maintaining them."},
  {"story"=>"I love to make new Friends. By this i think we can live better because we can help each other. I love to get familiar with new people especially in my Field. There is a lot i can learn. I have 10 years of experience and i am still Learning as 'Learning is a Process of Life actually!'","job"=>"Marketing and Advertising Consultant","education"=>"London Business School - Master of Business Administration (M.B.A.), Marketing/Marketing Management, General, A+"},
  {"story"=>"Since 1992 I have led and managed marketing, communication and public relations programs for nonprofit, philanthropy, technology and government organizations. I primarily focus on serving organizations involved in environmental, economic and social sustainability issues and technology topics. Specialties include strategic communication planning, writing and project management.","job"=>"Communication Consultant","education"=>"As a commercial spinoff of Lockheed Martin Missiles & Space, Space Imaging was formed to commercialize military spy technology by building and launching the world's first high-resolution commercial imaging satellite."},
  {"story"=>"Freelance press and editorial photographer based in London, contributor to Rex Shutterstock and Alamy picture libraries and news feeds. I have over twenty years experience as a photographer, I have worked for many clients including book publishers and graphic designers. I've had work published in many different forms, books, magazines, newspapers and the web.","job"=>"Photojournalist - Photographer","education"=>"I cover news and editorial stories in and around London, I enjoy following stories and documenting what's happening around us."},
  {"story"=>"Developing websites overlaps with Web design, so once a suitable design is agreed, I will develop the websites using XHTML, CSS standards, WCAG in mind, usability, Javascript and jquery along with any php/mysql back end coding. I have had a number of years in the SEO using techniques to help promote websites on Google. Also have experience in Google Analytics/PPC.","job"=>"Graphic and Web designer","education"=>"Running my own web design company. Providing web site design for small to medium sized companies. Offering web design, domain, hosting, web promotion, brochure websites etc. Responsible for managing individual web design jobs from start to finish."},
  {"story"=>"Yann, a fearless optimist, sets off on an epic journey - teaming up with rugged mountain man Kristoff and his loyal reindeer Sven - to find her sister Elsa, whose icy powers have trapped the kingdom of Arendelle in eternal winter. Encountering Everest-like conditions, mystical trolls and a hilarious snowman named Olaf, Anna and Kristoff battle the elements in a race to save the kingdom.","job"=>"Teacher @Le Wagon - I grow a beard too","education"=>"Let it go, let it go - Can't hold it back anymore - Let it go, let it go - Turn away and slam the door - I don't care what they're going to say - Let the storm rage on. The cold never bothered me anyway"},
  {"story"=>"FX is the patriarch of the Ingalls family. FX had many jobs while the Ingalls family lived in Walnut Grove. He worked at Hanson's mill and farmed his own land mainly, but often had to venture out of the area if the Ingalls needed extra money.","job"=>"Driver @Le Wagon","education"=>"FX also won a contest for being the fastest at drilling the holes in the rocks. Additionally, FX worked with explosives several times after this."},
  {"story"=>"After various adventures, Gabriel Barbapapa comes across a female of his species (more shapely, and black-coloured), named Barbamama. They produce seven children: Four sons: Barbabravo, a sports fan (red), Barbabright, a scientist (blue), Barbazoo, a nature enthusiast (yellow) and Barbabeau, a painter (black and furry), as well as three daughters: Barbalala, a musician (green), Barbabelle, a beauty queen (purple) and Barbalib, an intellectual (orange).","job"=>"Assistant teache @Le Wagon","education"=>"Gabriel Barbapapa himself is a generally papaya-shaped, pink shapeshifting blob-like creature who stumbles upon the human world and tries to fit in. The shapeshifting is usually accompanied by the saying 'Clickety Click—Barba Trick'"},
  {"story"=>"I am a food engineer/scientist with some experience abroad in international business. Keen on industrial processes, open-minded and proactive, I love working in an international environment, whether as a teamplayer or autonomously.","job"=>"Technical Sales Engineer","education"=>"Management of projects starting from the first contact until the final negotiation and the signature of the sale's contract. Organization of tests to validate the process with the customer. "},
  {"story"=>"Well-rounded generalist software engineer, experienced in designing and deploying all layers of standalone and web-based products. Specialties: Current: Financial reconciliation, ACH settlements/disbursements, Java + SQL systems. Past: GWT, Boost, three-tier systems, Java Swing UIs, C++ and Java Internationalization, CORBA.","job"=>"Software Engineer","education"=>"Built GWT-based tools for helping teams quickly request and acquire resources within Google's many datacenters. Built budget-related tools to help Google estimate the hardware cost and project the ongoing operational expenses related to running any given service within Google's datacenters."},
  {"story"=>"Self-motivated industrial engineer with experience in several marketing functions working for multinational companies within the CPG industry. Extensive knowledge in demand and forecasting estimations through S&OP cycle management. Experience managing SAP system. Outstanding professional references throughout Latin America. Fluent in Spanish.","job"=>"Logistic coordinator","education"=>"Responsible for more than 500 items forecasting within the US wholesale market based on the analysis of demographic characteristics, sales performance and target consumers. Defining the market in terms of clusters to support assortment analysis."},
  {"story"=>"Emma Jowett is an independent consultant and training specialist working with humanitarian agencies at the national, regional and international level. She has over 25 years experience working in the field of training and facilitation, developing, delivering and evaluating learning programmes in a variety of technical and thematic areas as illustrated in her portfolio of work and remains enthusiastic about her work.","job"=>"Independent Humanitarian Consultant","education"=>"The diversity of issues with which she has engaged has given her a unique insight into multiple disciplines, organisations and issues, which enables her to bring a richness of experience to her work. She is a skilled and experienced communicator, who enjoys working with diverse audiences."}
]


skills_list = [
  {"name"=>"Community Management", "mission"=>["We need to create a facebook page","Expert in twitter needed #hashtag","We need an hashtag expert #twitter","Crazy organiser for a public event","Crazy organiser for a public event","We need you to spend your day on instagram"]},
  {"name"=>"Photography Video", "mission"=>["We need to do a video for our crowfunding video","We need picture from our project","Beautiful team need a photographer","You have a camera we have smiles","Beautiful pictures needed for our Pack Your Skills page"]},
  {"name"=>"Graphic Design", "mission"=>["We need to design our landing page","Crazy geek seriously creative needed","Looking for a Pablo Job or a Steve Picasso","We need to redesign our presentation brochure","We need a beautiful poster for our comming event","Need a designer for our professionnal card"]},
  {"name"=>"Impact assessment", "mission"=>["Need to do some interviews of our beneficiaries","We think we do good, could you help us to proove it?","Need to prepare our indicators for our next project","We need you to construct our monitoring dashboard","We need help to rethink our project in an excel file"]},
  {"name"=>"Redaction", "mission"=>["Real writer wanted to tell the story of the association", "Looking for a web content editor", "Come animate our blog! Write awesome articles!", "Our website needs a killer editor for killer content!" ]},
  {"name"=>"Web development", "mission"=>["We have an association, we have missions, we need a website!", "Web developer wanted to make the world better. Minimum." "Great mission needs great people... and a great website!", "Need a terrific web developer for a terrific project", "Want to dev and not cave? Join us!"]},
  {"name"=>"Marketing Studies", "mission"=>["Help us and be the head of fundraising", "Join our communication team and live the dream!", "Web, Social Media, Creative Thinking, we need your Marketing mind", "Help us organize the 50 years of the association!"]}
]

social_issues_list = ["Mobility","Inclusion & Social Link","Environment","Fight against poverty","Human Rights","Education","Democracy","Labour and Employment","Agriculture & Food"]
youtube_crew_list = ["https://www.youtube.com/watch?v=FkNImMHVWwk", "https://www.youtube.com/watch?v=OpVrgdskaKo", "https://www.youtube.com/watch?v=1XJ1WGccZlY", "https://www.youtube.com/watch?v=YOdpPaGHm7k", "https://www.youtube.com/watch?v=smZSIWIbTZ0", "https://www.youtube.com/watch?v=973C-twI9fc", "https://www.youtube.com/watch?v=T8-yInMnVv4", "https://www.youtube.com/watch?v=QstSJAKt7x4", "https://www.youtube.com/watch?v=Dl6KZCp4s-k", "https://www.youtube.com/watch?v=V8k7z7E6kTA", "https://www.youtube.com/watch?v=JkwhhinDrgc", "https://www.youtube.com/watch?v=bFqp1RRt8JA", "https://www.youtube.com/watch?v=Fa7p1D6h10Q", "https://www.youtube.com/watch?v=c26WpuwVopk", "https://www.youtube.com/watch?v=SLM5fxR197g", "https://www.youtube.com/watch?v=VGO8PPUG13w", "https://www.youtube.com/watch?v=_gv46wepDRE", "https://www.youtube.com/watch?v=siHzcsoctZI", "https://www.youtube.com/watch?v=q9VMRvoCumI", "https://www.youtube.com/watch?v=zImkUM2HwxU", "https://www.youtube.com/watch?v=XnTpBzvDSOo", "https://www.youtube.com/watch?v=0OHxCe078uE", "https://www.youtube.com/watch?v=EBcbpJGmvKU", "https://www.youtube.com/watch?v=KvK8pvM5oGs", "https://www.youtube.com/watch?v=GFy3cxpSRzE", "https://www.youtube.com/watch?v=tp4XmSAAHXs", "https://www.youtube.com/watch?v=Oh-2vd362mo", "https://www.youtube.com/watch?v=vAEcYF_LLPc", "https://www.youtube.com/watch?v=oaMxd-VnMMo", "https://www.youtube.com/watch?v=Oh-2vd362mo", "https://www.youtube.com/watch?v=q9VMRvoCumI", "https://www.youtube.com/watch?v=0OHxCe078uE", "https://www.youtube.com/watch?v=RPvW985LryY", "https://www.youtube.com/watch?v=os7YK5oGZSc", "https://www.youtube.com/watch?v=RPvW985LryY", "https://www.youtube.com/watch?v=_f_q3cwCkok", "https://www.youtube.com/watch?v=nHQUV4Ak9zA", "https://www.youtube.com/watch?v=_wt_idrmVpg", "https://www.youtube.com/watch?v=6_GtVOHBLWY", "https://www.youtube.com/watch?v=JZrH8tqbddQ", "https://www.youtube.com/watch?v=6SVPRfGtnok", "https://www.youtube.com/watch?v=z4K9NsZFXsk", "https://www.youtube.com/watch?v=AVf5F1uJu4k", "https://www.youtube.com/watch?v=TH1FNA3Q6QE", "https://www.youtube.com/watch?v=Z4elCPuN2Ck", "https://www.youtube.com/watch?v=ybrstmRgvIg", "https://www.youtube.com/watch?v=GJJ_j4NJ_dg", "https://www.youtube.com/watch?v=ROQs-6Qg3mA", "https://www.youtube.com/watch?v=0coViPizeCQ", "https://www.youtube.com/watch?v=k_c4IrAthdI"]
status_mission_list = ['draft','online','closed','canceled']
language_list = ['English','English','English','English','English','French','English','Spanish','Chinese','Portuguese','German']
status_connection_list = ['draft','online']
values_list = ['Trust','Sharing','Respect','Caring/Compassionate/Benevolent','Cooperative', 'Persevering/Diligent','Personal Responsibility', 'Empathy', 'Courage', 'Tolerance', 'Benefiting Others']
name_list =["Pan-African Women's Organization", "Les Amis de la Terre", "Inter-African Union for Human Rights", "Sustainable Agriculture and Self-Help", "Alliance for Arab Women", "Organization Intersex International", "
Reseau Africain pour le Developpement", "African Peace Network", "Action Aides aux Familles Demunies", "National Society for Human Rights", "African Refugees Foundation", "Community Social Welfare Foundation", "Environmental Development Action in the Third World", "New Hope for Cambodian Children", "Learn4Life", "The Green Gecko Project", "Senhoa", "Life and Hope Association", "Mercy International", "Rain Tree Foundation", "Good Child Foundation", "Fair Trek", "Ecoteer", "SAELAO Project", "Friends of Nature", "The Climate Reality Project", "Rivers Without Borders", "Clean Ocean Foundation", "Green Power", "Earthlife Africa", "Wildlife & Environment Society", "Green Belt Movement", "People & Planet", "The Civic Trust", "Marine Conservation Society", "Forest Peoples Programme", "Global Action Plan", "Equality Now", "Global Rights", "Minority Rights Group International", "International Alliance of Women", "Transparency International", "Womankind Worldwide", "Unimondo", "Odhikar", "Middle Finger Protests", "Karapatan", "Hands Up United", "National Youth Rights Association", "Workplace Fairness"]
language_packer = ['French','Spanish','Chinese','Portuguese','German']

# generate Crew
c = 0

50.times do
  # 50 user profile
  #set the name
  name = name_list[c]

  user = User.new(
    email: Faker::Internet.email,
    password: '000000',
    role: 'crew'
    )
  user.save!

  #pick an address
  address = list_address.sample
  #pick a social issue
  social_issue = social_issues_list.sample
  #set the mission
  mission = mission_list[c]
  #pick 3 values
  values = values_list.sample(3)
  #pick a quote
  quote = list_quote.sample

  #build a crew for each user
  crew = user.build_crew(
    name: name,
    website: "https://www.#{name.split.first}.com",
    skype: name,
    facebook: "www.facebook.com#{name}",
    twitter: "https://twitter.com/#{name}",
    phone: Faker::PhoneNumber.phone_number,
    mission: mission['mission'],
    social_issue: social_issue,
    creation_date: Faker::Date.between_except(15.year.ago, 1.year.ago, Date.today),
    nb_collaborators: [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15].sample,
    team_description: Faker::Lorem.paragraph(3, false, 2),
    story: mission['description'],
    address: address['address'],
    city: address['city'],
    country: address['country'],
    value1: values[0],
    value2: values[1],
    value3: values[2],
    quote: quote['quote'],
    quote_author: quote['author'],
    youtube_link: youtube_crew_list[c]
  )
  crew.save!

  #pick 3 skills
  nb_mission = [1,2,3].sample
  skills = skills_list.sample(nb_mission)

  url = 'http://res.cloudinary.com/pack-your-skills/image/upload/v1480614863/Seed/logo_crew/'+c.to_s+'.jpg'
  crew.logo_url = url
  crew.save!

  m = 0

  nb_mission.times do
    mission = crew.missions.new(
      title:skills[m - 1]["mission"].sample,
      duration: '2',
      hours_per_day: 6,
      days_per_week: 4,
      address: address['address'],
      city: address['city'],
      country: address['country'],
      skill: skills[m - 1]["name"],
      status: status_mission_list.sample,
      description: mission['description'],
      language: language_list.sample
    )
  mission.save!

  url = 'http://res.cloudinary.com/pack-your-skills/image/upload/v1480615101/Seed/cover_mission/'+c.to_s+'.jpg'
  mission.cover_picture_url = url

  url = 'http://res.cloudinary.com/pack-your-skills/image/upload/v1480614961/Seed/hosting_mission/'+c.to_s+'.png'
  mission.hosting_picture_url = url

  mission.save!

  puts "mission #{m} done for crew #{c}"
  m += 1
  end
  c += 1
  puts "crew #{c} done"
end


p = 0
20.times do
  # 20 user profile
  puts "packer #{p}"
  # set packer
  packer = packer_info[p]
#first_name last_name youtube
  story = packer_story[p]
# story job education

  #pick an address
  address = list_address.sample

  user = User.new(
    email: packer["first_name"]+p.to_s+"@gmail.com",
    password: '000000',
    role: 'packer',
    first_name: packer["first_name"] ,
    last_name: packer["last_name"] ,
    story: story["story"],
    address: address['address'],
    city: address['city'],
    country: address['country'],
    birthdate: Faker::Date.between_except(45.year.ago, 18.year.ago, Date.today)
    )
  user.save!


  #pick 3 values
  values = values_list.sample(3)
  #pick a quote
  quote = list_quote.sample

  #build a packer for each user
  packer = user.build_packer(
    nationality:address['country'],
    phone: Faker::PhoneNumber.phone_number,
    skype: packer["last_name"]+"."+packer["first_name"],
    website: "https://www."+p.to_s+".com",
    cv_link: "https://www.linkedin.com/"+packer["last_name"].split.first+"."+packer["first_name"].split.first,
    job: story["job"],
    value1: values[0],
    value2: values[1],
    value3: values[2],
    quote: quote['quote'],
    quote_author: quote['author'],
    youtube_link: youtube_crew_list[c]
  )
  packer.save!

  url = 'http://res.cloudinary.com/pack-your-skills/image/upload/v1480614930/Seed/profile_picture_packer/p'+(p+1).to_s+'.jpg'
  packer.profile_photo_url = url

  packer.save!

  skill = packer.skills.new(
    type_of_skill:'language',
    level: [1,2,3].sample,
    title: 'English')
  skill.save

  [1,2].sample.times do
    skill = packer.skills.new(
      type_of_skill:'language',
      level: [1,2,3].sample,
      title: language_packer.sample
      )
    skill.save!
  end

  [1,2,3].sample.times do
    skill = packer.skills.new(
      type_of_skill:'professionnal',
      level: [1,2,3].sample,
      title: skills_list.sample['name']
      )
    skill.save!
  end

  [1,2,3].sample.times do
    education = packer.build_education(
      description:story['education']
      )
    education.save!
  end

  p += 1
end

