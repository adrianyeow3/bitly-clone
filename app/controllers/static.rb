get '/' do
  # let user create new short url, display a list of shortened URLs
  @urls = Url.all
  erb :"static/index"
end

post '/urls' do

  url = Url.new(long_url_text: params[:long_url])
  url.shorten
  if url.save
    redirect '/'
  end
end

get '/:short_url' do
  @url = Url.find_by(short_url_text: params[:short_url])

  redirect "http://#{@url.long_url_text}"
end

