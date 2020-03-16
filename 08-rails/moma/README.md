# CREATE PROJECT

1. CREATE RAILS PROJECT
rails new moma --skip-git -T --database=postgresql

2. CREATE MIGRATION SQL FILE
rails generate migration create_artists

3. WITHIN DB file, create_artists migration folder
  Add each column for table and attach date type

4. ENSURE POSTGRES IS RUNNING
rails db:create
rails db:migrate

5. TEST db set up correctly
rails db --> \d artists
schema.rb within db
rails is keeping database within postgres elephant

6. Undo db migration
rails db:rollback
rails db:migrate (to reapply db)

7. Create db model
touch app/models/artist.rb (SINGULAR and lowercase)
apply ActiveRecord to Artist class within artist.rb

8. Add pry-rails gem
Gemfile --> gem 'pry-rails'
bundle

9. Test db model
rails console
Artist
Artist.new

10. Add seed data in db folder to database
rails db:seed

11. Test seeds created
rails console
Artist.all

12. GENERATE RESOURCES
routes.rb
resources :artists

13. TEST ROUTES GENERATED
rails routes

14. GENERATE CONTROLLER & erb files
rails generate controller Artists index new edit show

15. CLEAN UP GENERATE
remove created routes in routes.rb, keep resources :artists



----

#ASSOCIATIONS

1. PREPARE MIGRATION to associate two tables
rails generate migration add_artist_id_to_works

2. UPDATE the migrate db .rb file with new_column

3. MIGRATE
rails db:migrate

4. ROLLBACK if made a typo
rails db:rollback
edit/fix typo
rails db:migrate

5. ADD ASSOCIATIONS in .rb model files

6. MAKE ASSOCIATIONS between artist and their works
rails console
w = Work.first
a = Artist.first
a.works << w

Work.first.artist.name -- TEST
