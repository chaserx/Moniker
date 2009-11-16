# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_moniker_session',
  :secret      => 'cc729c69b5f08d517a00dc0113d04a97b7963e3b8a9756c655c1e6b8715631d9e8981394d6c831fbee906955efb198d40e7e4e54977544e2de0cae13147964e3'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
