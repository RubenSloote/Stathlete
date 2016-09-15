# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Stat.delete_all
# Team.delete_all
# Game.delete_all
# Coach.delete_all
# Player.delete_all

russel = Player.create([
  {name:"Russel"}, {image:"http://img.bleacherreport.net/img/images/photos/003/570/165/hi-res-39042215448e6d76b78bcba00c373101_crop_north.jpg?w=630&h=420&q=75"}])
steven = Player.create([
  {name:"Steven"},                                {image:"http://www.stuff.co.nz/content/dam/images/1/a/3/x/4/t/image.related.StuffLandscapeSixteenByNine.620x349.1a3wun.png/1456969533837.jpg"}])
anthony = Player.create([
  {name:"Anthony"}, {image:"http://img.bleacherreport.net/img/article/media_slots/photos/002/012/561/hi-res-b2178215e60e4460d7108374d9e227ed_crop_exact.jpg?w=650&h=433&q=85"}])


Coach.create(name:"Billy", image:"http://cdn1.thecomeback.com/wp-content/uploads/2015/04/Billy-Donovan-Florida-Gators.jpg")
Coach.create(name:"Tyronn", image:"https://www.thestar.com/content/dam/thestar/sports/raptors/2016/05/17/stark-contrast-between-dwane-casey-tyronn-lue-in-eastern-conference-final/tyronn-lue.jpg.size.custom.crop.883x650.jpg")
Coach.create(name:"Luke", image:"http://www.trbimg.com/img-565e0acd/turbine/la-sp-sn-luke-walton-nba-coach-of-month-201512-001/650/650x366")


Game.create(title:"VS Warriors")
Game.create(title:"VS Bulls")
Game.create(title:"VS Lakers")


Team.create(name:"Thunder")
Team.create(name:"Cavs")
Team.create(name:"Clippers")


Stat.create(name:"points", value:25)
Stat.create(name:"rebounds", value:12)
Stat.create(name:"assists", value:9)
