###
# Compass
###

# Change Compass configuration
compass_config do |config|
  config.output_style = :nest
  config.line_comments = false
end
require 'compass-normalize'

###
# Sprockets
###

sprockets.append_path '../bower_components'

###
# Page options, layouts, aliases and proxies
###

with_layout :layout do
  page "/*", :layout => "layout"
end

###
# Helpers
###

helpers do
  def lang(path)
    I18n.locale.to_s + "/" + path
  end
end

activate :automatic_image_sizes
configure :development do
  activate :livereload
end

set :css_dir, 'style'
set :js_dir, 'js'
set :images_dir, 'images'
set :slim, { pretty: true, sort_attrs: false, format: :html5 }


configure :build do
  # activate :minify_css
  # activate :minify_javascript
  # activate :asset_hash
  # activate :relative_assets
  # set :http_prefix, "/Content/images/"
end
