module App
  class Server < Sinatra::Base

    get "/" do 
      @boroughs = Borough.all

      erb :index
    end

    get "/boroughs/:id" do
      id = params["id"]
      @borough = Borough.find(id)
      @neighborhoods = Neighborhood.find_by({borough_id: id})
      erb :borough
    end


  end #App
end #Server