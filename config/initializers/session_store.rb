# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_hudson_monitor_session',
  :secret      => 'b43d0963e8d40e6c347abab709cc7c7e5c36acb370e1b963bf79ef35a0e80d01458b8e3cc91d09eb4fac90f3f8623637fee12af9722792d326896df0587a7712'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
