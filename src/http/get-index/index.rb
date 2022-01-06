require 'json'

def handler(event: nil, context: nil)
  p context

  {
    event: event, # locally this is null
    body: 'Ruby!'
  }
end
