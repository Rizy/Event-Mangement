# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_whitelabel_session',
  :secret      => 'b6e79db53cb840d1e81d374fe7eff38864efa054a5b07895d2cce9e41871982bdb3f308b22febfd83c6a8d56e691847f6aa68831a4a4ef3a3e5af2be33cf1bff'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
