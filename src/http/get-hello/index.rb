def handler(*rest, event: nil, context: nil)
  if event # Lambda environment
    request = event
  elsif rest # local Sandbox
    request = rest[0]
  end

  query = request['queryStringParameters']
  name = query ? query['name'] : nil

  { body: "Matz says hi #{name || 'there'}." }
end
