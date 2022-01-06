require 'bundler/setup'
require 'architect/functions'
require 'faker'

def handler(*rest, event: nil, context: nil)
  if event # Lambda environment
    request = event
  elsif rest # local Sandbox
    request = rest[0]
  end

  newMountain = Faker::Mountain.name

  session = Arc::HTTP::Session.read(request)
  # "undefined method `has_key?' for nil:NilClass"
  # "vendor/bundle/ruby/2.7.0/gems/architect-functions-0.5.3/lib/architect/http.rb:12:in `read'"

  prevMountain = session['mountain']

  Arc::HTTP::Session.write({ mountain: newMountain })

  {
    newMountain: newMountain,
    prevMountain: nil
  }
end
