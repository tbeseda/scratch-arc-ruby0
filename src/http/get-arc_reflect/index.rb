require 'bundler/setup'
require 'architect/functions'

def handler(*rest)
  {
    body: { arc: Arc.reflect }
  }
end
