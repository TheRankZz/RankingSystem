# RankingSystem

RankingSystem ist eine Webseite zum informieren, bewerten und kommentieren von Spielen.

***Online Demo***

Unsere Seite ist unter Heroku zu finden mit folgender URL:

https://therankzz.herokuapp.com

Admin
```
email: admin@therankzz.de
passwort: admin123
```
Benutzer
```
email: benutzer@therankzz.de
passwort: benutzer123
```

***Informationen***

*   Besucher können ...
    - Spiele anzeigen
    - Kommentare lesen
    - nach Spielen suchen
    - sich registrieren

*   Benutzer können ...
    - alles was ein Besucher auch kann
    - Spiele bewerten
    - Kommentare zu Spielen abgeben
    - Kommentare von anderen Benutzern melden
    - eigene Kommentare löschen
    - sich anmelden/abmelden
    - ein Profil anlegen/bearbeiten
    - ihr Konto bearbeiten/löschen

*   Admin kann ...
    - alles was ein Benutzer kann
    - Benutzer anzeigen
    - andere Benutzer löschen
    - Spiele anlegen, bearbeiten und löschen
    - gemeldete Kommentare anzeigen
    - gemeldete Kommentare zurücksetzen oder löschen

*   Spiele können nach folgenden Kriterien bewertet werden:

        - Spieldesign
        - Story/Atmosphäre
        - Umfang
        - Spielspaß

    Die Gesamtbewertung wird automatisch aus den benanten Kriterien ermittelt.


***Start***
*   RankingSystem 1.0 arbeitet mit der Rails 4.2.5.1 und mit der Ruby Version
    2.3.0.
*   Damit RankingSystem fehlerfrei läuft, muss folgendes beachtet werden:

        - Imagemagick 6.7.7 installieren
        - Postgresql 9.3 installieren


Einrichten von Postgresql 9.3 auf Linux:

```
    - sudo apt-get update
    - sudo apt-get install postgresql postgresql-contrib libpq-dev
    - sudo -u postgres createuser -s pguser
    - sudo -u postgres psql
    - \password pguser
    - nun als Passwort 'passwort' eingeben
    - \q
    - sudo gedit /etc/postgresql/9.3/main/pg_hba.conf

```
    - in der pg_hba.conf Datei die folgenden Zeilen suchen:
        local   all             all                                     peer
        host    all             all             127.0.0.1/32            md5
        host    all             all             ::1/128                 md5
    - und mit diesen Zeilen ersetzen:
        local   all             all                                     trust
        host    all             all             127.0.0.1/32            trust
        host    all             all             ::1/128                 trust
    - sudo service postgresql restart

Nachdem Einrichten von Postgresql 9.3 in das Projektverzeichnis wechseln und
folgendes in die console eingeben:

```
    - bundle install
    - rake db:create
    - rake db:migrate
    - rake db:seed

```

**Übersicht über die wichtigsten Gems und Funktionen**
*   Allgemeine

```
    - gem 'rails', '4.2.5'
    - gem 'pg'
    - gem 'sass-rails', '~> 5.0'
    - gem 'uglifier', '>= 1.3.0'
    - gem 'coffee-rails', '~> 4.1.0'
    - gem 'jquery-rails'
    - gem 'turbolinks'
    - gem 'jbuilder', '~> 2.0'
    - gem 'sdoc', '~> 0.4.0'

```

*   Für RSpec Tests

```
    - gem 'byebug'
    - gem 'rspec-rails'
    - gem 'factory_girl_rails'
    - gem 'guard-rspec'
    - gem 'faker'
    - gem 'capybara'

```

*   Bildupload

```
    - gem 'paperclip', '4.3.5'

```

*   Bewertung

```
    - gem 'ratyrate', '1.2.2.alpha'

```

*   Anmeldung, Registrieren und Rollenberechtigung

```
    - gem 'devise'
    - gem 'cancan'
    - gem 'rolify'

```

***Tests***

Um die Tests zu starten folgenden Befehl verwenden:

```
    - bundle exec rspec spec/'pfad zum Test'
    Bsp.: bundle exec rspec spec/models/game_add_spec.rb
```

Alle Tests sind im spec Ordner.

***User Story***

Liegt als PDF im Hauptverzeichnis.


***Ausblick***

    - Wenn man einen Kommentar meldet, kann man einen Grund angeben.

    - Es gibt einen Super-Admin, der andere Admins löschen kann(impliziert, dass es mehrere Admins geben kann).

    - Admin kann Benutzer sperren/entsperren

    - Kommentare kommentieren

