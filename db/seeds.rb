# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# StarSigns
StarSign.create(date_range: '03/21-04/19', name: 'Aries', blurb: 'Angry one', image: '/images/image', default_compatibility: '[3,1,4,2,5,1,3,1,5,2,4,1]')
StarSign.create(date_range: '04/20-05/20', name: 'Taurus', blurb: 'Cow Moo', image: '/images/image', default_compatibility: '[2,3,1,4,2,5,1,3,2,5,2,4]')
StarSign.create(date_range: '05/21-06/20', name: 'Gemini', blurb: 'Twinning', image: '/images/image', default_compatibility: '[4,2,3,2,4,2,5,2,3,1,5,2]')
StarSign.create(date_range: '06/21-07/22', name: 'Cancer', blurb: 'Crabby much?', image: '/images/image', default_compatibility: '[2,1,2,5,4,3,1,5,4,1,3,2]')
StarSign.create(date_range: '07/23-08/22', name: 'Leo', blurb: 'Rawr XD', image: '/images/image', default_compatibility: '[5,4,3,2,1,3,2,1,5,4,1,2]')
StarSign.create(date_range: '08/23-09/22', name: 'Virgo', blurb: 'Femcel energy', image: '/images/image', default_compatibility: '[3,2,4,5,4,1,3,1,2,3,5,1]')
StarSign.create(date_range: '09/23-10/22', name: 'Libra', blurb: 'Blah, in all things', image: '/images/image', default_compatibility: '[3,4,5,3,2,4,1,5,1,2,3,1]')
StarSign.create(date_range: '10/23-11/21', name: 'Scorpio', blurb: 'Toxic backstabber', image: '/images/image', default_compatibility: '[1,2,3,5,4,3,5,1,4,1,2,1]')
StarSign.create(date_range: '11/22-12/21', name: 'Sagittarius', blurb: 'Horse Girl', image: '/images/image', default_compatibility: '[5,4,2,1,3,1,4,2,5,1,3,1]')
StarSign.create(date_range: '12/22-01/19', name: 'Capricorn', blurb: 'Nutso!', image: '/images/image', default_compatibility: '[2,1,2,4,5,3,2,5,1,4,1,3]')
StarSign.create(date_range: '01/20-02/18', name: 'Aquarius', blurb: 'Wishy-Washy', image: '/images/image', default_compatibility: '[1,2,4,3,2,1,4,5,3,5,1,2]')
StarSign.create(date_range: '02/19-03/20', name: 'Pisces', blurb: 'Gonna Cry?', image: '/images/image', default_compatibility: '[4,3,2,1,3,5,2,1,4,3,5,1]')

# Users
User.create(auth0_id: '1', name: 'Oscar', age: 25, email: 'oscar@mail.com', gender: 'masc', preference: '["masc", "femme", "them"]', bio: 'great dancer', birthday: '1/3', image: 'images/user', star_sign_id: '11', matches: '[]', compatibility: '[1,2,4,3,2,1,4,5,3,5,1,2]')
User.create(auth0_id: '2', name: 'Ektaj', age: 25, email: 'ektaj@gmail.com', gender: 'masc', preference: '["femme"]', bio: 'Strong as G', birthday: '', image: 'images/user', star_sign_id: '6', matches: '[]', compatibility: '[3,2,4,5,4,1,3,1,2,3,5,1]')
User.create(auth0_id: '3', name: 'Israel', age: 25, email: 'israel25@hotmail.com', gender: 'masc', preference: '["femme"]', bio: 'fefe', birthday: '', image: 'images/user', star_sign_id: '2', matches: '[]', compatibility: '[2,3,1,4,2,5,1,3,2,5,2,4]')
User.create(auth0_id: '4', name: 'stefan', age: 18 , email: 'sampleemail@gmail.com', gender: 'masc', preference: '["masc", "femme"]', bio: 'this is my bio', birthday: '', image: 'images/user', star_sign_id: '2', matches: '[]', compatibility: '[2,3,1,4,2,5,1,3,2,5,2,4]')
User.create(auth0_id: '5', name: 'Lorelei', age: 18 , email: 'sampleemail@gmail.com', gender: 'femme', preference: '["femme", "them"]', bio: 'this is my bio', birthday: '', image: 'images/user', star_sign_id: '3', matches: '[]', compatibility: '[4,2,3,2,4,2,5,2,3,1,5,2]')
User.create(auth0_id: '6', name: 'joan', age: 18 , email: 'sampleemail@gmail.com', gender: 'femme', preference: '["femme"]', bio: 'this is my bio', birthday: '', image: 'images/user', star_sign_id: '4', matches: '[]', compatibility: '[2,1,2,5,4,3,1,5,4,1,3,2]')
User.create(auth0_id: '7', name: 'samuel', age: 18 , email: 'sampleemail@gmail.com', gender: 'masc', preference: '["femme", "them"]', bio: 'this is my bio', birthday: '', image: 'images/user', star_sign_id: '5', matches: '[]', compatibility: '[5,4,3,2,1,3,2,1,5,4,1,2]')
User.create(auth0_id: '8', name: 'crispin', age: 18 , email: 'sampleemail@gmail.com', gender: 'them', preference: '["masc", "them"]', bio: 'this is my bio', birthday: '', image: 'images/user', star_sign_id: '7', matches: '[]', compatibility: '[3,4,5,3,2,4,1,5,1,2,3,1]')
User.create(auth0_id: '9', name: 'gino', age: 18 , email: 'sampleemail@gmail.com', gender: 'masc', preference: '["masc", "them"]', bio: 'this is my bio', birthday: '', image: 'images/user', star_sign_id: '8', matches: '[]', compatibility: '[1,2,3,5,4,3,5,1,4,1,2,1]')
User.create(auth0_id: '10', name: 'clara', age: 18 , email: 'sampleemail@gmail.com', gender: 'femme', preference: '["masc", "them"]', bio: 'this is my bio', birthday: '', image: 'images/user', star_sign_id: '9', matches: '[]', compatibility: '[1,2,3,5,4,3,5,1,4,1,2,1]')
User.create(auth0_id: '11', name: 'dante', age: 18 , email: 'sampleemail@gmail.com', gender: 'masc', preference: '["femme"]', bio: 'this is my bio', birthday: '', image: 'images/user', star_sign_id: '10', matches: '[]', compatibility: '[5,4,2,1,3,1,4,2,5,1,3,1]')
User.create(auth0_id: '12', name: 'juliette', age: 18 , email: 'sampleemail@gmail.com', gender: 'femme', preference: '["masc"]', bio: 'this is my bio', birthday: '', image: 'images/user', star_sign_id: '12', matches: '[]', compatibility: '[4,3,2,1,3,5,2,1,4,3,5,1]')

