get '/' do
  @coach_message = params[:coach_message] || "what do you want kid ?"
  # Look in app/views/index.erb
  erb :index
end

post '/coach' do
  
  def stupid_coaching(answer)
  		if answer == "idiot"
  			@coach_message = "méchant Dobby !" 
  			erb :index
  		elsif answer == "bonjour"
  			@coach_message = "BYE BYE !!!"
				erb :exit
  		else
  			@coach_message = "Je ne comprends pas. Essaye encore"
  			erb :index
  		end
  	
  end

 stupid_coaching(params[:what])

end