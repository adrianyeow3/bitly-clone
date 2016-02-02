class Url < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!
  def shorten
    self.short_url_text = random_url
  end

  def random_url  #Will return  a random url
    url = SecureRandom.base64(2)
    url
  end
end
