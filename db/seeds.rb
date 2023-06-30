# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# StarSigns
StarSign.create(date_range: '3/21-4/19', name: 'Aries', blurb: 'Angry one', image: '/images/image', default_compatibility: '[5,5,5,5,5,5,5,5,5,5,5,5]')
StarSign.create(date_range: '4/20-5/20', name: 'Taurus', blurb: 'Cow Moo', image: '/images/image', default_compatibility: '[5,5,5,5,5,5,5,5,5,5,5,5]')
StarSign.create(date_range: '5/21-6/20', name: 'Gemini', blurb: 'Twinning', image: '/images/image', default_compatibility: '[5,5,5,5,5,5,5,5,5,5,5,5]')
StarSign.create(date_range: '6/21-7/22', name: 'Cancer', blurb: 'Crabby much?', image: '/images/image', default_compatibility: '[5,5,5,5,5,5,5,5,5,5,5,5]')
StarSign.create(date_range: '7/23-8/22', name: 'Leo', blurb: 'Rawr XD', image: '/images/image', default_compatibility: '[5,5,5,5,5,5,5,5,5,5,5,5]')
StarSign.create(date_range: '8/23-9/22', name: 'Virgo', blurb: 'Femcel energy', image: '/images/image', default_compatibility: '[5,5,5,5,5,5,5,5,5,5,5,5]')
StarSign.create(date_range: '9/23-10/22', name: 'Libra', blurb: 'Blah, in all things', image: '/images/image', default_compatibility: '[5,5,5,5,5,5,5,5,5,5,5,5]')
StarSign.create(date_range: '10/23-11/21', name: 'Scorpio', blurb: 'Toxic backstabber', image: '/images/image', default_compatibility: '[5,5,5,5,5,5,5,5,5,5,5,5]')
StarSign.create(date_range: '11/22-12/21', name: 'Sagittarius', blurb: 'Horse Girl', image: '/images/image', default_compatibility: '[5,5,5,5,5,5,5,5,5,5,5,5]')
StarSign.create(date_range: '12/22-1/19', name: 'Capricorn', blurb: 'Nutso!', image: '/images/image', default_compatibility: '[5,5,5,5,5,5,5,5,5,5,5,5]')
StarSign.create(date_range: '1/20-2/18', name: 'Aquarius', blurb: 'Wishy-Washy', image: '/images/image', default_compatibility: '[5,5,5,5,5,5,5,5,5,5,5,5]')
StarSign.create(date_range: '2/19-3/20', name: 'Pisces', blurb: 'Gonna Cry?', image: '/images/image', default_compatibility: '[5,5,5,5,5,5,5,5,5,5,5,5]')

# Users
User.create(auth0_id: '1', name: 'Oscar', age: 25, email: 'oscar@mail.com', gender: 'masc', preference: '[masc, femme, them]', bio: 'great dancer', birthday: '1/3', image: 'images/user', star_sign_id: '11', matches: '', compatibility: '[5,5,5,5,5,5,5,5,5,5,5,5]')
User.create(auth0_id: '2', name: 'Ektaj', age: 25, email: 'ektaj@gmail.com', gender: 'masc', preference: '[femme]', bio: 'Strong as G', birthday: '', image: 'images/user', star_sign_id: '6', matches: '', compatibility: '[5,5,5,5,5,5,5,5,5,5,5,5]')
User.create(auth0_id: '3', name: 'Israel', age: 25, email: 'israel25@hotmail.com', gender: 'masc', preference: '[femme]', bio: 'fefe', birthday: '', image: 'images/user', star_sign_id: '', matches: '', compatibility: '[5,5,5,5,5,5,5,5,5,5,5,5]')
User.create(auth0_id: '4', name: 'stefan', age: 18 , email: 'sampleemail@gmail.com', gender: 'masc', preference: '[masc, femme]', bio: 'this is my bio', birthday: '', image: 'images/user', star_sign_id: '2', matches: '', compatibility: '[5,5,5,5,5,5,5,5,5,5,5,5]')
User.create(auth0_id: '5', name: 'Lorelei', age: 18 , email: 'sampleemail@gmail.com', gender: 'femme', preference: '[femme, them]', bio: 'this is my bio', birthday: '', image: 'images/user', star_sign_id: '3', matches: '', compatibility: '[5,5,5,5,5,5,5,5,5,5,5,5]')
User.create(auth0_id: '6', name: 'joan', age: 18 , email: 'sampleemail@gmail.com', gender: 'femme', preference: '[femme]', bio: 'this is my bio', birthday: '', image: 'images/user', star_sign_id: '4', matches: '', compatibility: '[5,5,5,5,5,5,5,5,5,5,5,5]')
User.create(auth0_id: '7', name: 'samuel', age: 18 , email: 'sampleemail@gmail.com', gender: 'masc', preference: '[femme, them]', bio: 'this is my bio', birthday: '', image: 'images/user', star_sign_id: '5', matches: '', compatibility: '[5,5,5,5,5,5,5,5,5,5,5,5]')
User.create(auth0_id: '8', name: 'crispin', age: 18 , email: 'sampleemail@gmail.com', gender: 'them', preference: '[masc, them]', bio: 'this is my bio', birthday: '', image: 'images/user', star_sign_id: '7', matches: '', compatibility: '[5,5,5,5,5,5,5,5,5,5,5,5]')
User.create(auth0_id: '9', name: 'gino', age: 18 , email: 'sampleemail@gmail.com', gender: 'masc', preference: '[masc, them]', bio: 'this is my bio', birthday: '', image: 'images/user', star_sign_id: '8', matches: '', compatibility: '[5,5,5,5,5,5,5,5,5,5,5,5]')
User.create(auth0_id: '10', name: 'clara', age: 18 , email: 'sampleemail@gmail.com', gender: 'femme', preference: '[masc, them]', bio: 'this is my bio', birthday: '', image: 'images/user', star_sign_id: '9', matches: '', compatibility: '[5,5,5,5,5,5,5,5,5,5,5,5]')
User.create(auth0_id: '11', name: 'dante', age: 18 , email: 'sampleemail@gmail.com', gender: 'masc', preference: '[femme]', bio: 'this is my bio', birthday: '', image: 'images/user', star_sign_id: '10', matches: '', compatibility: '[5,5,5,5,5,5,5,5,5,5,5,5]')
User.create(auth0_id: '12', name: 'juliette', age: 18 , email: 'sampleemail@gmail.com', gender: 'femme', preference: '[masc]', bio: 'this is my bio', birthday: '', image: 'images/user', star_sign_id: '12', matches: '', compatibility: '[5,5,5,5,5,5,5,5,5,5,5,5]')

