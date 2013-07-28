get '/' do
	@notes = Note.all.sort
  erb :index
end

post '/notes' do
	Note.create(title: params[:title], content: params[:content])
	redirect '/'
end 

get '/notes/:id' do |id|
	@note = Note.find(id)
	erb :show
end

get '/notes/:id/edit' do |id|
	@note = Note.find(params[:id])
	erb :edit
end

put '/notes/:id' do |id|
	note = Note.find(id)
	note.title = params[:title]
	note.content = params[:content]
	note.save
	redirect "/notes/#{note.id}"
end

get '/notes/:id/delete' do |id|
	Note.destroy(id)
	redirect '/'
end
