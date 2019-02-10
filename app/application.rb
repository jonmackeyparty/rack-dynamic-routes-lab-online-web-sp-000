class Application
 
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
 
    if req.path=="/items/"
      item_name = req.path.split("/item/").last
      item = @@items.find{|i| i.name == song_title}
      resp.write "#{item.price}"
    else
      resp.write "Item not found"
      resp.status = 404
    end
 
    resp.finish
  end
end