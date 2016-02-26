# RankingSystem

RankingSystem ist eine Webseite zum Informieren und Bewerten von Spielen.

***Heroku***

Unsere Seite ist unter Heroku zu finden mit der URL

https://therankzz.herokuapp.com

Admin
```
email: admin@therankzz.de
passwort: password
```
User
```
email: benutzer@therankzz.de
passwort: password
```

***Informationen***

*   Besucher können..
    - Spiele anzeigen lassen
    - Kommentare sehen
    - nach Spielen suchen
    - sich registrieren

*   Benutzer können..
    - alles was ein Besucher kann
    - Spiele bewerten
    - Kommentare abgeben
    - Kommentare von anderen Benutzern melden
    - eigene Kommentare löschen
    - sich anmelden/abmelden
    - ein Profil anlegen/bearbeiten
    - ihr Konto bearbeiten/löschen

*   Admin kann..
    - alles was ein Benutzer kann
    - sich Benutzer anzeigen lassen
    - andere Benutzer löschen
    - Spiele anlegen/bearbeiten/löschen
    - sich gemeldete Kommentare anzeigen
    - gemeldete Kommentare zurücksetzen oder löschen

*   Spiele können nach folgenden Kriterien bewertet werden:

        - Spieldesign
        - Story/Atmosphäre
        - Umfang
        - Spielspaß


***Start***
*   RankingSystem 1.0 arbeitet mit der Rails 4.2.5.1 und mit der Ruby Version
    2.3.0.
*   Damit RankingSystem fehlerfrei läuft müssen Sie folgendes beachten:

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

*   um Bilder hochzuladen

```
    - gem 'paperclip', '4.3.5'

```

*   um zu Bewerten

```
    - gem 'ratyrate', '1.2.2.alpha'

```

*   für User, Rechte, Profile

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

Alle Tests sind also im spec Ordner.

***User Story***

Liegt als PDF im Hauptverzeichnis.


***Ausblick***

Wenn man einen Kommentar meldet kann man einen Grund angeben.

Es gibt einen Super-Admin, der andere Admins löschen kann(impliziert, dass es mehrere Admins geben kann).

Admin kann Benutzer sperren/entsperren

