get '/' do

  erb :index
end

get '/new' do
	@album = Album.new
  erb :form
end

post '/' do
  # Create a new album and add it to the $albums array 
  # You should use only one parameter of the params hash named :album
  # You should use only Album#new and Album#save
  album = Album.new(params[:album])
  album.save

  erb :index
end

get '/:id' do
@album = Album.find(params[:id].to_i)
erb :show
end

get '/:id/delete' do
Album.delete(params[:id].to_i)
erb :index
end

get '/:id/edit' do
	@id = params[:id].to_i
	@album = $albums[@id]
	erb :form
end

post '/:id' do
  $albums[params[:id].to_i] = Album.new(params[:album])
  erb :index
end