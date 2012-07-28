
# Hello people! This is my skeleton for a sinatra app

##dependencies

- [Ruby](http://ruby-lang.org)
- [Postgresql](http://www.postgresql.org)
- [bundler](http://gembundler.com)

##installation

- Be sure to have ruby and bundler installed!

````
$ bundle install
$ cp config/database.yml.default config/database.yml
$ shotgun
````
- In another terminal window

````
$ open 'http://localhost:9393/YOUR_NAME'
````

That's it! 
You can now edit your application!

###Tests

They are in ````spec/```` folder, to run them
````
$ rake spec
````

As you can imagine they are really basic here.

## Application architecture

- config: all the config files
	- for database : database.yml
	- for the rest have a look;) 	
- db: all the file relatives to the database migrations
  	- I use sinatra-activerecord to get migrations
  	- I don't have rake tasks for database creation
  	- it migrates only for current environnment (development by default)
- models: all your (non-)activerecord models
- routes: all the sinatra controllers.
	- for the moment, I only reopen the same class (App in this case)
- spec: Rspec folders. There are factories with factory girl
- views: All the views, I personally prefer rabl and slim or haml as template engines 

## Contributing
Don't hesitate to send me a mail or open an issue for any comments or ideas.

Or easier : 

1. Fork it
2. Create your feature branch (git checkout -b new-feature)
3. Commit your changes (git commit -am 'Added some sparkle features')
4. Push to the branch (git push origin new-feature)
5. Create new Pull Request

###Contributors
Yannick ([@yann_ck](http://twitter.com/yann_ck))


