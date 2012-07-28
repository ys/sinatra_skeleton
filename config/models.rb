ActiveRecord::Base.include_root_in_json = false

Dir["./models/**/*.rb"].each{|model|
  require model
}
