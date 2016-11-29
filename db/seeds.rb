# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@constants =  {
  "Skills"=>[
    {"name"=>"Community Management", "picto"=>"fa-comments-o"},
    {"name"=>"Photography Video", "picto"=>"fa-camera"},
    {"name"=>"Graphic Design", "picto"=>"fa-pencil-square-o"},
    {"name"=>"Redaction", "picto"=>"fa-align-left"},
    {"name"=>"Impact assessment", "picto"=>"fa-pie-chart"},
    {"name"=>"Web development", "picto"=>"fa-laptop"},
    {"name"=>"Marketing Studies", "picto"=>"fa fa-area-chart"}
  ],
  "Social_issues"=>[
    {"name"=>"Mobility"},
    {"name"=>"Inclusion & Social Link"},
    {"name"=>"Environment"},
    {"name"=>"Fight against poverty"},
    {"name"=>"Human Rights"},
    {"name"=>"Education"},
    {"name"=>"Democracy"},
    {"name"=>"Labour and Employment"},
    {"name"=>"Agriculture & Food"}
  ]}

cities = ['Lyon','Manila','Mexico','Kuala Lumpur','Sao Paolo','Cape Town']
status_mission = ['draft','online','suspended','closed','canceled']

30.times do
  user = User.new(
    email: Faker::Internet.email,
    password: '000000',
    address: '',
    city: cities.sample,
    country: '',
    story: Faker::Lorem.paragraph(3, false, 2),
    role: 'crew'
  )
  user.save
  crew = user.build_crew(
    name: Faker::Pokemon.name,
    website: Faker::Internet.url,
    skype: Faker::Beer.name,
    facebook: Faker::Internet.url('www.facebook.com'),
    phone: Faker::PhoneNumber.phone_number,
    mission: Faker::Lorem.sentence,
    social_issue: @constants["Social_issues"].sample['name']
    )
  crew.save
  [1,2,3].sample.times do
    mission = crew.missions.new(
      title:Faker::Lorem.sentence,
      duration: '2 weeks',
      hours_per_day: 6,
      days_per_week: 4,
      address: '',
      city: user.city,
      country: '',
      skill: @constants["Skills"].sample['name'],
      status: status_mission.sample,
      description: Faker::Lorem.paragraph(3, false, 2),
      )
    mission.save
  end
end

30.times do
  user = User.new(
    email: Faker::Internet.email,
    password: '000000',
    address: '',
    city: cities.sample,
    country: '',
    story: Faker::Lorem.paragraph(3, false, 2),
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    role: 'packer'
  )
  user.save
  packer = user.build_packer(
    job: Faker::Pokemon.name,
    website: Faker::Internet.url,
    skype: Faker::Beer.name,
    cv_link: Faker::Internet.url,
    phone: Faker::PhoneNumber.phone_number
  )
  packer.save
  [1,2,3].sample.times do
    skill = packer.skills.new(
      type_of_skill:'language',
      level: [1,2,3].sample,
      title: ['French','English','Spanish'].sample
      )
    skill.save
  end
  [1,2,3].sample.times do
    skill = packer.skills.new(
      type_of_skill:'professionnal',
      level: [1,2,3].sample,
      title: @constants["Skills"].sample['name']
      )
    skill.save
  end
  [1,2,3].sample.times do
    experience = packer.experiences.new(
      type_of_exp:'professionnal',
      organisation:Faker::Beer.name,
      position: Faker::Pokemon.name,
      description:Faker::Lorem.sentence,
      )
    experience.save
  end
  [1,2,3].sample.times do
    experience = packer.experiences.new(
      type_of_exp:'volunteering',
      organisation:Faker::Beer.name,
      position: Faker::Pokemon.name,
      description:Faker::Lorem.sentence,
      )
    experience.save
  end
  [1,2,3].sample.times do
    education = packer.build_education(
      description:Faker::Lorem.paragraph(3, false, 2)
      )
    education.save
  end
end

@missions = Mission.all
@packers = Packer.all

status_connection = ['draft','online','accepted','refused','canceled','confirmed']

@missions.each do |mission|
  [1,2,3].sample.times do
    connection = mission.connections.new(
      message: Faker::Lorem.paragraph(3, false, 2),
      packer_id: @packers.sample.id,
      status: status_connection.sample
      )
    connection.save
  end
end
