# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_MovieWishList_session',
  :secret      => 'b377bae103e6bd387c3a4aab67b362fb01925d0649844af108f4fce15f10eadcecce650e7e471939a9dfd40f7c0b7e4f885e8fb72f8ebed12e98577c25c49829'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
