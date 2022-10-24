# frozen_string_literal: true

# For redis-actionpack gem
Rails704Ruby312RedisSessionStore::Application.config.session_store :redis_store,
  key: "session_id",
  expire_after: 8.hours
# secure: true # ensures HTTP cookies are transferred from server to client on a secure (HTTPS) connection

