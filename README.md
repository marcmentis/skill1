## App to be used by Developers wanting to write NYS Rails Applications

# Use
`$ git clone -b dev https://github.com/marcmentis/skill1.git skill1`

`$ cd skill1`

Create a new file in `/config` called `application.yml`. Copy the contents of example_application.yml into the new file. (Or place whatever db config you want in the file.)

`$ bundle`

`$ bundle exec rake db:schema:load`

`$ bundle exec rake db:seed`

`$ bundle exec rake db:populate`


