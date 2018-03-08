json.extract! advertiser, :id, :email, :subdomain, :created_at, :updated_at
json.url advertiser_url(advertiser, format: :json)
