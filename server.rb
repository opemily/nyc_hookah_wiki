module App
  class Server < Sinatra::Base
    enable :sessions
    set :method_override, true

    get "/" do 
      @user = User.find session[:user_id] if session[:user_id]
      @boroughs = Borough.all

      erb :index
    end

    get "/boroughs/:id" do
      id = params["id"]
      @borough = Borough.find(id)
      @neighborhoods = Neighborhood.where borough_id: params["id"]
      erb :borough
    end

    get "/users/new" do
      erb :new_user
    end

    post "/users" do 
      User.create({username: params["username"]})
      redirect ("/")
    end

    get "/login" do
      erb :login
    end

    post "/sessions" do
      username = params["username"]
      @user = User.find_by username: username

      if @user == nil
        redirect ("/login")
      else
        session[:user_id] = @user.id
        redirect ("/")
      end
    end

    delete "/sessions" do
      puts "logging out"
      session[:user_id] = nil
      redirect ("/")
    end

  end #App
end #Server