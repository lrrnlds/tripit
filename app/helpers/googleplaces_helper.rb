helpers do

    def search_places(type, city, state)
      @client.spots_by_query('#{type} near #{city} #{state}')
    end

end
