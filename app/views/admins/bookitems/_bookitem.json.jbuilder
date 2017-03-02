json.extract! bookitem, :id, :title, :author, :description, :created_at, :updated_at
json.url bookitem_url(bookitem, format: :json)