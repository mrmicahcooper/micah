class Photo

  def self.all
    album_photos
  end

  private

  def self.client
    Picasa::Client.new(user_id: "mrmicahcooper@gmail.com")
  end

  def self.album
    client.album.show("5797040163555140801")
  end

  def self.album_photos
    album.photos.reverse.map{|p| p.content.src }
  end

end
