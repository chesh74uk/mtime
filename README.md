# README

AWS Cloud9 SETUP
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install nano

Ubuntu version: lsb_release -a

MONGO
https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/
sudo service mongod start

RUBY
rvm install 2.5.3 --autolibs=disable
rvm --default use 2.5.3
(if error: sudo apt purge libssl-dev && sudo apt install libssl1.0-dev)

RAILS
gem install rails -v 5.2.3
rails new mtime  --skip-active-record

GEMS
https://github.com/twbs/bootstrap-rubygem (generator)
https://github.com/plataformatec/simple_form (generator)
https://docs.mongodb.com/mongoid/current/tutorials/mongoid-installation/
https://github.com/rspec/rspec-rails (generator)
https://github.com/cucumber/cucumber-rails (generator)
https://github.com/thoughtbot/shoulda-matchers
https://github.com/thoughtbot/factory_bot_rails
https://github.com/rails/rails-controller-testing
https://github.com/BetterErrors/better_errors
https://github.com/DatabaseCleaner/database_cleaner

edit spec/rails_helper.rb with database cleaning strategy (truncate with mongo)
& env.rb in features

GIT
git init
git add * && git commit -m "msg"
git remote add origin URL
git push origin master

git checkout -b branchname
git merge branchname
git branch -d branchname

SEMAPHORE
https://chesh74uk.semaphoreci.com
create a folder .semaphore and add semaphore.yml to it
curl https://storage.googleapis.com/sem-cli-releases/get.sh | bash

FACTORYBOT
https://github.com/thoughtbot/factory_bot/blob/master/GETTING_STARTED.md
FactoryBot.create(:timeline_with_stages, stages_count: 1).stages.length

TODO

