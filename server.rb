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

    get "/neighborhood/:id" do
      id = params["id"]
      @neighborhood = Neighborhood.find(id)
      @lounges = Lounge.where neighborhood_id: params["id"]

      erb :neighborhood
    end

    get "/lounge/:id" do
      id = params["id"]
      @lounge = Lounge.find(id)
      @neighborhood= Neighborhood.find_by(id: @lounge.neighborhood_id)

      erb :lounge
    end

    get "/new_lounge" do

      @boroughs = Borough.all
      @neighborhoods = Neighborhood.all

      # @options = Neighborhood.all.map{|n| n.name, n.borough_id}

      erb :new_lounge
    end

    delete "/lounge/:id" do
      lounge = Lounge.find(params["id"])
      lounge.destroy
      redirect ("/")
    end

    # Username/ Password
    get "/users/new" do
      erb :new_user
    end

    post "/users" do 
       @user = User.create({ 
                    username: params["username"], 
                    password: params["password"], 
                    password_confirmation: params["password_confirmation"]
                  })

       session[:user_id] = @user.id

      redirect ("/")
    end

    get "/login" do
      erb :login
    end

    post "/sessions" do
      username = params["username"]
      @user = User.find_by ({username: params[:username]}).try(:authenticate, params[:password])

      if @user 
        session[:user_id] = @user.id
        redirect ("/")
      else
        redirect ("/login")
      end
    end

    delete "/sessions" do
      puts "logging out"
      session[:user_id] = nil
      redirect ("/")
    end

    


  end #App
end #Server