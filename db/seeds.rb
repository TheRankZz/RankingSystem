# encoding: UTF-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

AverageCache.destroy_all
Comment.destroy_all
GameGenre.destroy_all
GamePlatform.destroy_all
Game.destroy_all
Genre.destroy_all
OverallAverage.destroy_all
Platform.destroy_all
Profile.destroy_all
Rate.destroy_all
RatingCache.destroy_all
Role.destroy_all
User.destroy_all
#---------------------------------------------------------------------------------
# User
#---------------------------------------------------------------------------------
admin = User.create ({id: 1, email: 'admin@therankzz.de', password: "password",
                      password_confirmation: "password"})
admin.add_role :admin
benutzer = User.create ({id: 2, email: 'test@test.de', password: "password",
              password_confirmation: "password"})


#---------------------------------------------------------------------------------
# Profile
#---------------------------------------------------------------------------------
Profile.create({"id"=>1, "username"=>"admin", "firstname"=>"admin", "lastname"=>"admin", "user"=>admin})
Profile.create({"id"=>2, "username"=>"benutzer", "firstname"=>"benutzer", "lastname"=>"benutzer", "user"=>benutzer})

#---------------------------------------------------------------------------------
# Genres
#---------------------------------------------------------------------------------
Genre.create({"id"=>1, "name"=>"Rollenspiel"}, {"id"=>2, "name"=>"Shooter"}, {"id"=>3, "name"=>"Jump ’n’ Run"}, {"id"=>4, "name"=>"Adventure"},
             {"id"=>5, "name"=>"Denkspiel"}, {"id"=>6, "name"=>"Simulation"}, {"id"=>7, "name"=>"Sportspiel"},
             {"id"=>8, "name"=>"Rennspiel"}, {"id"=>9, "name"=>"Strategie"})

#---------------------------------------------------------------------------------
# Platforms
#---------------------------------------------------------------------------------
Platform.create({"id"=>1,"name"=>"Xbox ONE"}, {"id"=>2,"name"=>"Xbox 360"}, {"id"=>3,"name"=>"Playstation 4"}, {"id"=>4,"name"=>"Playstation 3"},
                {"id"=>5,"name"=>"PC"}, {"id"=>6,"name"=>"Nintendo Wii"}, {"id"=>7,"name"=>"Nintendo Wii U"}, {"id"=>8,"name"=>"Nintendo 3DS"})

#---------------------------------------------------------------------------------
# Games
#---------------------------------------------------------------------------------
Game.create({"id"=>1,
             "title"=>"FIFA 16",
             "description"=>"FIFA 16 bietet Innovationen auf dem gesamten Platz und sorgt für ein ausgewogenes, authentisches und begeisterndes Fußballerlebnis. Spiele so, wie du es möchtest und entwickle dich dabei stetig weiter. Durch die verbesserte Verteidigung und die Kontrolle im Mittelfeld produzierst du mehr magische Momente als je zuvor. Mit dem neuen FIFA-Trainer können erfahrene FIFA-Spieler ihre Fähigkeiten erweitern und Neueinsteiger erhalten einen erleichterten Einstieg. Du entscheidest über den Ausgang des Spiels. FIFA 16 – Play Beautiful! Weitere Features werden in den nächsten Monaten vor der Veröffentlichung des Spiels bekannt gegeben.",
             "developer"=>"Electronic Arts",
             "link"=>"http://www.amazon.de/Electronic-Arts-1024333-FIFA-PlayStation/dp/B00YF1WYTU/ref=sr_1_1?s=videogames&ie=UTF8&qid=1456317466&sr=1-1&keywords=fifa+16",
             "releasedate"=>"2015-09-24",
             :genre_ids => [7],
             :platform_ids => [1, 2, 3, 4, 5] })

Game.create({"id"=>2,
             "title"=>"The Witcher 3: Wild Hunt",
             "description"=>"The Witcher 3: Wilde Jagd ist ein Rollenspiel der nächsten Generation mit packender Story und offener Welt, in einem grafisch atemberaubenden Fantasy–Universum voller folgenreicher Entscheidungen und einschneidender Konsequenzen. In The Witcher schlüpft der Spieler in die Rolle des Geralt von Riva, dessen Aufgabe es ist, in einer riesigen offenen Welt voller Handelsstädte, Wikinger–Pirateninseln, gefährlicher Gebirgspässe und vergessener Kavernen das Kind aus einer Prophezeiung zu finden.",
             "developer"=>"Bandai Namco Entertainment",
             "link"=>"http://www.amazon.de/Witcher-Wild-Hunt-Standard-Playstation/dp/B00KNZNVLM/ref=sr_1_1?s=videogames&ie=UTF8&qid=1456317660&sr=1-1&keywords=witcher",
             "releasedate"=>"2015-05-19",
             :genre_ids => [1],
             :platform_ids => [1, 3, 5] })

Game.create({"id"=>3,
             "title"=>"Fallout 4",
             "description"=>"Fallout 4 ist ein postapokalyptisches Open-World-Rollenspiel von Bethesda Game Studios. Es siedelt sich 200 Jahre nach einem Atomkrieg in dem Gebiet um das nahezu vernichtete Boston in Nordamerika an. Spieler schlüpfen in die Rolle des einzigen Überlebenden des Schutzbunkers Vault 111, der aus dem Kälteschlaf erwacht und in dem Ödland um das Überleben kämpfen muss. Dabei ähnelt das nicht-lineare Gameplay dem von Fallout 3 (2008) und Fallout: New Vegas (2010), wurde in vieler Hinsicht aber überarbeitet und ausgebaut. Erneut kann zwischen der der First-Person- und der Third-Person-Perspektive ausgewählt werden, wobei während der Gefechte durch das bewährte V.A.T.S.-Kampfsystem auch filmische Kamerawinkel zum Einsatz kommen. Mit dem S.P.E.C.I.A.L. getauften Charaktersystem lassen sich Spielfiguren mit einer Auswahl von Hunderten Eigenschaften und Extras entwickeln, die vom kampferprobten Soldaten bis hin zum charismatischen Überredungskünstler reiche können. Hinzu kommen etliche Möglichkeiten in der Herstellung von Waffen, Rüstungen oder auch Chemikalien und Nahrung. Als Grafikgerüst für Fallout 4 dient Bethesdas hauseigene Creation Engine.",
             "developer"=>"Bethesda",
             "link"=>"http://www.amazon.de/Fallout-4-Uncut-PlayStation/dp/B00YSOD3RG/ref=sr_1_1?s=videogames&ie=UTF8&qid=1456317868&sr=1-1&keywords=Fallout+4",
             "releasedate"=>"2015-11-10",
             :genre_ids => [1, 2],
             :platform_ids => [1, 3, 5] })




Game.create({"id"=> 1,
             "title"=>"FIFA 16",
             "description"=>"",
             "developer"=>"EA",
             "link"=>"http://www.amazon.de/",
             "releasedate"=>"2015-03-03",
             :genre_ids => [1],
             :platform_ids => [1] })
