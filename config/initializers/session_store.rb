# Be sure to restart your server when you modify this file.
if Rails.env == "production" || Rails.env == "staging"
  Rails.application.config.session_store :cookie_store, key: '_zoom_session', :domain => "." + HOSTNAME.split(":").first.gsub("www",'')
else
  # Rails.application.config.session_store :cookie_store, key: "_zoom_session", :domain => "localhost"
end