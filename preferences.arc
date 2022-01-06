# The @env pragma is synced (and overwritten) by running arc env
@env
# testing
  # Add testing env vars with: arc env testing NAME value

staging
  BUNDLE_FROZEN 1

production
  BUNDLE_FROZEN 1
