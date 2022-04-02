# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


streng = Team.create(name: "John Streng")
mucklow = Team.create(name: "N Mucklow")
branley = Team.create(name: "C Branley")
helzer = Team.create(name: "J Helzer")
kiendl = Team.create(name: "B Kiendl")
nagata = Team.create(name: "A Nagata")
jenkins = Team.create(name: "D Jenkins")
farmer = Team.create(name: "D Farmer")
wallace = Team.create(name: "D Wallace")
jessie = Team.create(name: "J Price")
howard = Team.create(name: "C HOWARD")
charb1 = Team.create(name: "P CHARBONNEAU 1")
charb2 = Team.create(name: "P CHARBONNEAU 2")
thompson = Team.create(name: "L THOMPSON")
paul = Team.create(name: "B PAUL")
marv = Team.create(name: "MARV")

rahm = Player.find_by(name: "J. Rahm")

streng.players << rahm
helzer.players << rahm
farmer.players << rahm
wallace.players << rahm

kawa = Player.find_by(name: "C. Morikawa")

nagata.players << kawa
howard.players << kawa
marv.players << kawa

cham = Player.find_by(name: 'B. DeChambeau')

jenkins.players << cham
charb1.players << cham
paul.players << cham

schf = Player.find_by(name: "X. Schauffele")

howard.players << schf

reed = Player.find_by(name: 'P. Reed')
jessie.players << reed

cant = Player.find_by(name: 'P. Cantlay')

streng.players << cant

brooks = Player.find_by(name: 'B. Koepka')
thompson.players << brooks
marv.players << brooks

rory = Player.find_by(name: 'R. McIlroy')
kiendl.players << rory

tony = Player.find_by(name: 'T. Finau')
streng.players << tony
mucklow.players << tony
branley.players << tony
helzer.players << tony
kiendl.players << tony
nagata.players << tony
farmer.players << tony
wallace.players << tony
charb2.players << tony
marv.players << tony

v = Player.find_by(name: 'V. Hovland')

branley.players << v
nagata.players << v
charb1.players << v
thompson.players << v

berger = Player.find_by(name: 'D. Berger')

marv.players << berger

fitz = Player.find_by(name: 'M. Fitzpatrick')

paul.players << fitz

horschel = Player.find_by(name: "B. Horschel")
jenkins.players << horschel
howard.players << horschel

casey = Player.find_by(name: 'P. Casey')
mucklow.players << casey
jenkins.players << casey
charb1.players << casey

im = Player.find_by(name: 'S. Im')
streng.players << im
helzer.players << im
farmer.players << im
jessie.players << im

lee = Player.find_by(name: 'L. Westwood')
wallace.players << lee
howard.players << lee
paul.players << lee

scheffler = Player.find_by(name: 'S. Scheffler')
charb2.players << scheffler

fleet = Player.find_by(name: 'T. Fleetwood')
kiendl.players << fleet
jessie.players << fleet
thompson.players << fleet

#7 11 12 14 15 17 20
mats = Player.find_by(name: 'H. Matsuyama')
mucklow.players << mats
nagata.players << mats
jenkins.players << mats
wallace.players << mats
jessie.players << mats
charb1.players << mats
paul.players << mats

joaquin = Player.find_by(name: 'J. Niemann')
howard.players << joaquin

#6 10 13 14 18 19

oost = Player.find_by(name: "L. Oosthuizen")
streng.players << oost
kiendl.players << oost
farmer.players << oost
wallace.players << oost
charb2.players << oost
thompson.players << oost



#6 8 9 11 12 15 17 21
smith = Player.find_by(name: 'C. Smith')

streng.players << smith
branley.players << smith
helzer.players << smith
nagata.players << smith
jenkins.players << smith
jessie.players << smith
charb1.players << smith
marv.players << smith

#9 

ancer = Player.find_by(name: 'A. Ancer')
helzer.players << ancer

scott = Player.find_by(name: 'A. Scott')
#8  10 18 19 20 21
kiendl.players << scott
charb2.players << scott
thompson.players << scott
paul.players << scott
marv.players << scott

na = Player.find_by(name: 'K. Na')
#7 13 
mucklow.players << na
farmer.players << na

homa = Player.find_by(name: 'M. Homa')
wallace.players << homa

spieth = Player.find_by(name: 'J. Spieth')
streng.players << spieth
mucklow.players << spieth
branley.players << spieth
helzer.players << spieth
kiendl.players << spieth
nagata.players << spieth
jenkins.players << spieth
farmer.players << spieth
wallace.players << spieth
jessie.players << spieth
howard.players << spieth
charb1.players << spieth
charb2.players << spieth
thompson.players << spieth
paul.players << spieth
marv.players << spieth

serg = Player.find_by(name: 'S. Garcia')
# 8 9 10 11 18 20 21

branley.players << serg
helzer.players << serg
kiendl.players << serg
nagata.players << serg
charb2.players << serg
paul.players << serg
marv.players << serg


conners = Player.find_by(name: 'C. Conners')
charb1.players << conners

lowry = Player.find_by(name: 'S. Lowry')
thompson.players << lowry

singh = Player.find_by(name: 'V. Singh')
paul.players << singh