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
admin = User.create ({ email: 'admin@therankzz.de', password: "password",
                      password_confirmation: "password"})
admin.add_role :admin

benutzer = User.create ({ email: 'benutzer@therankzz.de', password: "password",
              password_confirmation: "password"})


#---------------------------------------------------------------------------------
# Profile
#---------------------------------------------------------------------------------
Profile.create({ username: "admin", firstname:"admin", lastname: "admin", :user=>admin})
Profile.create({ username: "benutzer", firstname: "benutzer", lastname: "benutzer", :user =>benutzer})

#---------------------------------------------------------------------------------
# Genres
#---------------------------------------------------------------------------------
Genre.create([{"id"=>1, "name"=>"Rollenspiel"}, {"id"=>2, "name"=>"Shooter"}, {"id"=>3, "name"=>"Jump n Run"}, {"id"=>4, "name"=>"Adventure"},
              {"id"=>5, "name"=>"Denkspiel"}, {"id"=>6, "name"=>"Simulation"}, {"id"=>7, "name"=>"Sportspiel"},
              {"id"=>8, "name"=>"Rennspiel"}, {"id"=>9, "name"=>"Strategie"}, {"id"=>10, "name"=>"Action"}, {"id"=>11, "name"=>"Open-World"}])

#---------------------------------------------------------------------------------
# Platforms
#---------------------------------------------------------------------------------
Platform.create([{"id"=>1,"name"=>"Xbox ONE"}, {"id"=>2,"name"=>"Xbox 360"}, {"id"=>3,"name"=>"Playstation 4"}, {"id"=>4,"name"=>"Playstation 3"},
                {"id"=>5,"name"=>"PC"}, {"id"=>6,"name"=>"Nintendo Wii"}, {"id"=>7,"name"=>"Nintendo Wii U"}, {"id"=>8,"name"=>"Nintendo 3DS"}])

#---------------------------------------------------------------------------------
# Games
#---------------------------------------------------------------------------------
Game.create({"title"=>"FIFA 16",
             "description"=>"FIFA 16 bietet Innovationen auf dem gesamten Platz und sorgt für ein ausgewogenes, authentisches und begeisterndes Fußballerlebnis. Spiele so, wie du es möchtest und entwickle dich dabei stetig weiter. Durch die verbesserte Verteidigung und die Kontrolle im Mittelfeld produzierst du mehr magische Momente als je zuvor. Mit dem neuen FIFA-Trainer können erfahrene FIFA-Spieler ihre Fähigkeiten erweitern und Neueinsteiger erhalten einen erleichterten Einstieg. Du entscheidest über den Ausgang des Spiels. FIFA 16 – Play Beautiful! Weitere Features werden in den nächsten Monaten vor der Veröffentlichung des Spiels bekannt gegeben.",
             "developer"=>"Electronic Arts",
             "link"=>"http://www.amazon.de/Electronic-Arts-1024333-FIFA-PlayStation/dp/B00YF1WYTU/ref=sr_1_1?s=videogames&ie=UTF8&qid=1456317466&sr=1-1&keywords=fifa+16",
             "releasedate"=>"2015-09-24",
             :image => File.new(File.join(Rails.root, '/public/images/seed/fifa.png')),
             :genre_ids => [7],
             :platform_ids => [1, 2, 3, 4, 5] })

 Game.create({"title"=>"The Witcher 3: Wild Hunt",
              "description"=>"The Witcher 3: Wilde Jagd ist ein Rollenspiel der nächsten Generation mit packender Story und offener Welt, in einem grafisch atemberaubenden Fantasy–Universum voller folgenreicher Entscheidungen und einschneidender Konsequenzen. In The Witcher schlüpft der Spieler in die Rolle des Geralt von Riva, dessen Aufgabe es ist, in einer riesigen offenen Welt voller Handelsstädte, Wikinger–Pirateninseln, gefährlicher Gebirgspässe und vergessener Kavernen das Kind aus einer Prophezeiung zu finden.",
              "developer"=>"Bandai Namco Entertainment",
              "link"=>"http://www.amazon.de/Witcher-Wild-Hunt-Standard-Playstation/dp/B00KNZNVLM/ref=sr_1_1?s=videogames&ie=UTF8&qid=1456317660&sr=1-1&keywords=witcher",
              "releasedate"=>"2015-05-19",
              :image => File.new(File.join(Rails.root, '/public/images/seed/witcher.jpg')),
              :genre_ids => [1],
              :platform_ids => [1, 3, 5] })
 Game.create({"title"=>"Fallout 4",
              "description"=>"Fallout 4 ist ein postapokalyptisches Open-World-Rollenspiel von Bethesda Game Studios. Es siedelt sich 200 Jahre nach einem Atomkrieg in dem Gebiet um das nahezu vernichtete Boston in Nordamerika an. Spieler schlüpfen in die Rolle des einzigen Überlebenden des Schutzbunkers Vault 111, der aus dem Kälteschlaf erwacht und in dem Ödland um das Überleben kämpfen muss. Dabei ähnelt das nicht-lineare Gameplay dem von Fallout 3 (2008) und Fallout: New Vegas (2010), wurde in vieler Hinsicht aber überarbeitet und ausgebaut. Erneut kann zwischen der der First-Person- und der Third-Person-Perspektive ausgewählt werden, wobei während der Gefechte durch das bewährte V.A.T.S.-Kampfsystem auch filmische Kamerawinkel zum Einsatz kommen. Mit dem S.P.E.C.I.A.L. getauften Charaktersystem lassen sich Spielfiguren mit einer Auswahl von Hunderten Eigenschaften und Extras entwickeln, die vom kampferprobten Soldaten bis hin zum charismatischen Überredungskünstler reiche können. Hinzu kommen etliche Möglichkeiten in der Herstellung von Waffen, Rüstungen oder auch Chemikalien und Nahrung. Als Grafikgerüst für Fallout 4 dient Bethesdas hauseigene Creation Engine.",
              "developer"=>"Bethesda",
              "link"=>"http://www.amazon.de/Fallout-4-Uncut-PlayStation/dp/B00YSOD3RG/ref=sr_1_1?s=videogames&ie=UTF8&qid=1456317868&sr=1-1&keywords=Fallout+4",
              "releasedate"=>"2015-11-10",
              :image => File.new(File.join(Rails.root, '/public/images/seed/fallout.jpg')),
              :genre_ids => [1, 2],
              :platform_ids => [1, 3, 5] })

Game.create({"title"=>"Grand Theft Auto V",
             "description"=>"Los Santos: eine weitläufige, sonnendurchflutete Metropole voller Selbsthilfe-Gurus, Sternchen und vergessener Promis. Einst beneidet vom Rest der westlichen Welt, befindet sich die Stadt jetzt in einer Zeit der wirtschaftlichen Unsicherheit und des billigen Reality-TVs im Kampf gegen den Untergang. Inmitten des Chaos schmieden drei völlig unterschiedliche Kriminelle ihre eigenen Überlebens- und Erfolgspläne: Franklin, ein ehemaliger Straßengangster, der auf die richtige Gelegenheit und das große Geld wartet Michael, ein erfahrener Verbrecher und Ex-Häftling, dessen Ruhestand weit weniger rosig ist als erhofft und Trevor, ein brutaler Psychopath, den die Suche nach einem billigen Drogenrausch und dem nächsten großen Ding antreibt. Als der Crew kein anderer Ausweg mehr bleibt, setzen die drei bei einer Reihe von waghalsigen und gefährlichen Überfällen, mit denen sie für den Rest ihres Lebens ausgesorgt hätten, alles auf eine Karte. Grand Theft Auto V ist das größte, dynamischste und abwechslungsreichste Open-World-Spiel, das Rockstar Games je erschaffen hat und verbindet Storytelling und Gameplay auf eine ganz neue Art und Weise. Der Spieler wechselt wiederholt zwischen den Leben der drei Hauptfiguren hin und her und erlebt so alle Seiten der verwobenen Geschichte. Alle charakteristischen Merkmale der bahnbrechenden Reihe werden auch den neuesten Teil auszeichnen, darunter die unglaubliche Liebe zum Detail und die für Grand Theft Auto typische schwarzhumorige Interpretation der Gegenwartskultur. Hinzu kommt eine brandneue und ambitionierte Herangehensweise an Multiplayer in einer offenen Spielwelt.",
             "developer"=>"Rockstar Games",
             "link"=>"http://www.amazon.de/Rockstar-Games-41701-Grand-Theft/dp/B00KW2FKAQ/ref=sr_1_1?s=videogames&ie=UTF8&qid=1456318590&sr=1-1&keywords=GTA+5",
             "releasedate"=>"2014-11-18",
             :image => File.new(File.join(Rails.root, '/public/images/seed/gta.png')),
             :genre_ids => [10, 11],
             :platform_ids => [1, 2, 3, 4, 5] })

Game.create({"title"=>"Tom Clancy's Rainbow Six Siege",
             "description"=>"Das Spiel ist inspiriert von authentischen internationalen Antiterroreinheiten und versetzt die Spieler mitten in packende Nahkampfsituationen. Zum ersten Mal in der Tom Clancy's Rainbow Six-Reihe nehmen die Spieler an Belagerungen teil, einer neuen Angriffsart, in der die Gegner die Möglichkeit haben, ihre Umgebung in eine moderne Festung zu verwandeln, während das Rainbow Six-Team versucht, die feindliche Position zu stürmen.",
             "developer"=>"Ubisoft",
             "link"=>"http://www.amazon.de/Tom-Clancys-Rainbow-Six-Siege/dp/B00TPJU3BI/ref=sr_1_1?s=videogames&ie=UTF8&qid=1456318938&sr=1-1&keywords=rainbow+six+siege",
             "releasedate"=>"2015-12-01",
             :image => File.new(File.join(Rails.root, '/public/images/seed/rainbowsix.jpg')),
             :genre_ids => [2, 9],
             :platform_ids => [1, 3, 5] })

Game.create({"title"=>"Tom Clancy's The Division",
             "description"=>"Tom Clancy’s The Division spielt in New York City, drei Wochen nachdem die Stadt am Black Friday von einer tödlichen Pandemie befallen wurde. Nach nur wenigen Tagen ohne Nahrung löst sich die Gesellschaft in Chaos auf. The Division, eine geheime Einheit unabhängiger taktischer Agenten, wird mit der Direktive 51 aktiviert. Die Agenten von The Division leben unauffällig mitten unter uns, aber sind ausgebildet, unabhängig von offiziellen Befehlen zur Tat zu schreiten. Wenn alles zusammenbricht, beginnt ihre Mission.",
             "developer"=>"Ubisoft",
             "link"=>"http://www.amazon.de/Tom-Clancys-Division-PlayStation-4/dp/B00DBT0A5W/ref=sr_1_1?s=videogames&ie=UTF8&qid=1456319072&sr=1-1&keywords=the+division",
             "releasedate"=>"2016-03-08",
             :image => File.new(File.join(Rails.root, '/public/images/seed/thedivision.jpg')),
             :genre_ids => [11, 2],
             :platform_ids => [1, 3, 5] })

Game.create({"title"=>"Mario Kart 8",
             "description"=>"Der Kult-Racer ist zurück: neue Items, neue Charaktere und neue Strecken sorgen für Anti-Schwerkraft-Vergnügen mit Mario Kart 8! Mit bis zu 12 Spielern online gegeneinander antreten oder im heimischen Wohnzimmer mit bis zu 4 Spielern auf 32 Strecken die Reifen erstmals in HD quietschen lassen.",
             "developer"=>"Nintendo",
             "link"=>"http://www.amazon.de/Mario-Kart-8-Standard-Edition/dp/B00DCNX2ZW/ref=sr_1_3?ie=UTF8&qid=1456318326&sr=8-3&keywords=mario+kart",
             "releasedate"=>"2014-05-30",
             :image => File.new(File.join(Rails.root, '/public/images/seed/m8.jpg')),
             :genre_ids => [8],
             :platform_ids => [7] })

Game.create({"title"=>"The Legand of Zelda: Twilight Princess HD",
             "description"=>"Eine geheimnisvolle Finsternis hat sich über Hyrule gesenkt und verändert alles, worauf ihre Schatten fallen. Auch der junge Link gerät auf dem Weg zur Ratsversammlung von Hyrule in das unheimliche Zwielicht: Er wird in einen Wolf verwandelt und gefangen genommen. Aber mit Hilfe eines geheimnisvollen Mädchens namens Midna gelingt ihm die Flucht. Unterstützt von ihren Zauberkräften macht er sich auf die Suche nach der Quelle des Unheils, das Hyrule getroffen hat. Mal in Menschen-, mal in Wolfsgestalt durchstreift er die Weiten des Landes. Um Hyrule zu retten, muss er Helfer finden, Wissen und Waffen erwerben, sich durch finstere Verliese kämpfen, vertrackte Rätsel lösen, kurz: sein bisher umfangreichstes Abenteuer bestehen. Werde Teil der Legende!",
             "developer"=>"Nintendo",
             "link"=>"http://www.amazon.de/Legend-Zelda-Twilight-Princess-Wii/dp/B019MOBY4A/ref=sr_1_3?ie=UTF8&qid=1456318869&sr=8-3&keywords=zelda",
             "releasedate"=>"2016-03-04",
             :image => File.new(File.join(Rails.root, '/public/images/seed/zelda.jpg')),
             :genre_ids => [1],
             :platform_ids => [6, 7] })

Game.create({"title"=>"Mafia 2",
             "description"=>"Komm nach Empire Bay und tauch ein in eine epische Geschichte rund um die Welt der Mafia. 2K Czech, die Entwickler des ersten Mafia Spiels sorgen auch diesmal für eine riesige Spielwelt voller liebevoller Details. Mit den 40ern und 50er Jahren erstreckt sich MAFIA II über zwei der wohl schillerndsten Dekaden des 20. Jahrhunderts. Über 50 Autos im Stil der jeweiligen Epoche mit individuellem Fahrverhalten warten auf dich. Erkunde die Stadt zum Sound von Elvis Presley und Frank Sinatra – Über 120 original lizensierte Songs aus den 40ern und 50ern ertönen aus den Lautsprechern deines Radios, dazu erwartet dich ein orchestraler Soundtrack der Mafiagrößen aus der Filmindustrie in nichts nachsteht",
             "developer"=>"2K Games",
             "link"=>"http://www.amazon.de/2K-Games-Mafia-II-PlayStation/dp/B00CGB9UNY/ref=sr_1_2?ie=UTF8&qid=1456318855&sr=8-2&keywords=mafia+2",
             "releasedate"=>"2010-08-28",
             :image => File.new(File.join(Rails.root, '/public/images/seed/mafia.jpg')),
             :genre_ids => [10],
             :platform_ids => [2, 4, 5] })

Game.create({"title"=>"Call of Duty: Back Ops III",
             "description"=>"Call of Duty ist eine Computerspielreihe des amerikanischen Publishers Activision aus dem Genre der Ego-Shooter. Der Spieler übernimmt darin üblicherweise die Rolle eines Soldaten in einem Kriegsszenario. Der erste Titel der Reihe, entwickelt von Infinity Ward, wurde im Herbst 2003 veröffentlicht und spielt im Zweiten Weltkrieg. Sp‰tere Titel sind in zeitgenˆssischen oder futuristischen, in der Regel aber fiktiven Szenarien angesiedelt. Neben der meist linearen Einzelspieler-Kampagne bilden die verschiedenen Mehrspieler-Optionen einen Hauptschwerpunkt der Reihe. Neue Spiele werden in einem j‰hrlichen Rhythmus verˆffentlicht, zuletzt erschien Call of Duty: Black Ops III (2015).",
             "developer"=>"Nintendo",
             "link"=>"http://www.amazon.de/Call-Duty-Black-Ops-PlayStation/dp/B017O0L0V6/ref=sr_1_1?s=videogames&ie=UTF8&qid=1456319261&sr=1-1&keywords=call+of+duty",
             "releasedate"=>"2015-11-06",
             :image => File.new(File.join(Rails.root, '/public/images/seed/cod.jpg')),
             :genre_ids => [2],
             :platform_ids => [1, 2, 3, 4, 5] })