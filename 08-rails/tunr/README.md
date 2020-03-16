# HOW TO DO THIS!

1. CREATE PROJECT
$ rails new tunr -T --skip-git --database=postgresql

2. ADD PRY GEM
file Gemfile
gem 'pry-rails'
$ bundle

3. CREATE DATABASE
$ rails db:create

4. GENERATE MODELS
$ rails generate model Song title:text artist_id:integer album_id:integer
$ rails db:migrate

5. TEST MODEL SUCCESS
file db --> schema.db
$rails console
Song.new

6. GENERATE MORE MODELS
$ rails generate model Album title:text image:text
$ rails db:migrate

7. GENERATE MORE MODELS
$ rails generate model Artist name:text image:text
$ rails db:migrate

8. GENERATE MORE MODELS
$ rails generate model Genre name:text
$ rails db:migrate

9. AND ANOTHER...
$ rails generate model Mixtape title:text
$ rails db:migrate

10. ONE MORE.
$ rails generate model User email:text
$ rails db:migrate

# MODELS FINISHED

11. CHANGE EXISTING MODEL, ADD COLUMN
$ rails generate migration add_user_id_to_mixtapes user_id:integer
$ rails db:migrate

12. CREATE CONNECTION MIGRATIONS (i.e. migration to join tables)
$ rails generate migration create_genres_songs genre_id:integer song_id:integer
file create_genres_songs.db --> add :id => false
$ rails db:migrate

13. CREATE ANOTHER CONNECTION MIGRATION
$ rails generate migration create_mixtapes_songs mixtape_id:integer song_id:integer
file create_mixtapes_songs.db --> add :id => false
$ rails db:migrate

# MIGRATIONS FINISHED
# MODELS PREP with ASSOCIATIONS

14. ADD ASSOCIATIONS in each model file.rb and add optionals where necessary

# ADD SEEEEEDS

15. Add seed data into seeds.rb
16. Add associations into seeds.rb
17. rails db:seed

# WALK THE GRAPH

$ rails console

$ User.first
$ User.first.mixtapes
$ User.first.mixtapes.first.songs
$ User.first.mixtapes.first.songs.first
$ User.first.mixtapes.first.songs.first.artist
$ User.first.mixtapes.first.songs.first.artist.genres
$ User.first.mixtapes.first.songs.first.artist.genres.first.songs

$ Artist.last
$ Artist.last.songs.first.mixtapes
$ Artist.last.songs.first.genres

$ Album.first.songs
$ Album.first.songs.first.genres

# ADD ONE STEP ASSOCIATIONS (through)

18. ADD association in file.rb
has_many :albums, :through => :songs

19. TEST
$ rails console
$ Artist.first.genres

# RESET DATABASES

20. RUNS ALL MIGRATIONS and REPOPULATES if you STUFF UP
$ rails db:drop
$ rails db:create
$ rails db:migrate
$ rails db:seed

# ADD PASSWORDs

21. MIGRATION TO ADD password_digest TO USERS (usually just at this at beginning)
$ rails generate migration add_password_digest_to_users password_digest:string
$ rails db:migrate

22. UNCOMMENT GEM
Gemfile
gem 'bcrypt', '~> 3.1.7'
$ bundle

23. ADD ASSOCATION WITH SECURE PASSWORD
user.rb
has_secure_password

# BEGIN SETTING UP ROUTES, CONTROLLERS, VIEWS
$ rails generate controller Users new
