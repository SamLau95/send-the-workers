# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def make_admins
  Admin.create! email: 'samlau95@gmail.com',
                password: 'password'
  Admin.create! email: 'deborah.kwon@pepperdine.edu',
                password: 'password'
end

def make_testimonies
  names = ['Andrew the Apostle', 'Deborah the Judge']
  names.each do |name|
    Testimony.create! name: name,
                      summary: Faker::Lorem.paragraph(20),
                      content: Faker::Lorem.paragraph(100)
  end
end

def make_video_urls
  video_url = '//player.vimeo.com/video/77139145?badge=0'
  Testimony.all.map { |t| t.create_video_url url: video_url }
end

def make_image_urls
  ['http://placehold.it/970x600/A92B48/fff&text=Image',
   'http://placehold.it/970x600/EE964D/fff&text=Image',
   'http://placehold.it/970x600/f04124/fff&text=Image'].each do |url|
     Testimony.all.map { |t| t.image_urls.create url: url } 
   end

end

make_admins
make_testimonies
make_video_urls
make_image_urls