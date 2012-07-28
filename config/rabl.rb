Rabl.configure do |config|
  config.include_json_root = false
  config.include_child_root = false
  config.view_paths = ['./views']
end
# Register RABL
Rabl.register!

