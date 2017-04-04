namespace :importrest do
  desc "Import All Stores"
  task :new, [:p_url] => :environment do |_, args|
  	#TO look all rake  -T  OR rake -T importrest and to run rake importrest:new
  	#rake importrest:new["www.xxxxxx.com"] oR rake importrest:new
  	
  	if args[:p_url].blank?
  		url_search = "https://www.thuisbezorgd.nl/eten-bestellen-amsterdam-1096"
  	else
  		url_search = args[:p_url]
  	end

  	puts url_search
  	
  	puts "####### IMPORT RESTAURANT ###############################"

  	@test = open("#{url_search}")
    new_content = Nokogiri::HTML(@test)
 	restaurantes = new_content.css('#irestaurantlist').css('.restaurant').css('.logowrapper').css('.logo-n').css('.img-link')
	.css('.restlogo').each do |row| 

	    
	    puts "#{row.attr('alt')}"
      a = Restaurant.find_or_initialize_by(name:  "#{row.attr('alt')}")
      a.remote_avatar_url = "http:#{row.attr('data-original')}"
      a.save

	 
	end	
	puts args[:p_url]
	puts Restaurant.all.count
	#puts "Number total restaurants =  #{Restaurant.all.count} "	
  	puts " ########FINISH TO IMPOT ################################## "

  end

end
