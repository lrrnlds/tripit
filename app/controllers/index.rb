get '/' do
  client = GooglePlaces::Client.new('AIzaSyADVxtkjVmDegHPCmnSmGERwuQDE-12MwM')
  #@client.spots(-33.8670522, 151.1957362)
  pizza = client.spots_by_query('Pizza near Miami Florida').first
  p pizza.name
  p pizza.formatted_address
  erb :index
end

get '/session-viewer' do
  p session
end

get '/session-clearer' do
  p session
  session.clear
  p session
end

#<GooglePlaces::Spot:0x007ffcead58308 @reference="CmRSAAAAlxx2exncdcMgqgoTOlCCaqE90PpEuDaK3PHVmmuPE-dB5BRTMyndIEcfdhw6FzxyeO7uk4y2E-2m5o_0t6Nwo56T8sYJbUBEJH7IjvhzZnk6Fbiqx2HLjTGn_nTjMKz-EhDQsQ8yNAmTX85_0RZIKIJGGhQkgcZqp3qrJvGDBRCiUu4JTI2oLQ", @place_id="ChIJh02J7t-z2YgR_8FHMJhWObg", @vicinity=nil, @lat=25.8276156, @lng=-80.1868375, @viewport={"northeast"=>{"lat"=>25.82774475, "lng"=>-80.18654995}, "southwest"=>{"lat"=>25.82757255, "lng"=>-80.18693335}}, @name="Andiamo! Brick Oven Pizza", @icon="https://maps.gstatic.com/mapfiles/place_api/icons/restaurant-71.png", @types=["bar", "restaurant", "food", "point_of_interest", "establishment"], @id="ff55343871df596b80df7a14937008cd5f602d9b", @formatted_phone_number=nil, @international_phone_number=nil, @formatted_address="5600 Biscayne Blvd, Miami, FL 33137, United States", @address_components=nil, @street_number=nil, @street=nil, @city=nil, @region=nil, @postal_code=nil, @country=nil, @rating=4.4, @price_level=2, @opening_hours={"open_now"=>false, "weekday_text"=>[]}, @url=nil, @cid=0, @website=nil, @zagat_reviewed=nil, @zagat_selected=nil, @aspects=[], @review_summary=nil, @photos=[#<GooglePlaces::Photo:0x007ffcead58178 @width=434, @height=433, @photo_reference="CoQBdwAAAJr7JLQo9bO0QD9TarkznESBC8wWCFmNo8boE9cEf9ihqfgn_cBcHudUrXkzMwhvfKrT0d-XzjvFMTee2AES8ZQA80UGZ-MI0KVKY414cUPrCqJMmJNKRN5od5oXns85BSqh5qVpSaVPe8OD6GuH2KcoHat-HzAyKXnj2C1H273PEhCCl3G7vzP01URZePZZtXntGhRQ-b2vV037qKWzpQrHiPgTN3TDog", @html_attributions=["<a href=\"https://maps.google.com/maps/contrib/109056776124086142431/photos\">Andiamo! Brick Oven Pizza</a>"], @api_key="AIzaSyADVxtkjVmDegHPCmnSmGERwuQDE-12MwM">], @reviews=[], @nextpagetoken=nil, @events=[], @utc_offset=nil>
