module ApplicationHelper
	def check_admin(user)
		user.kind == 'admin'
	end

	def sentence
    ["À la carte", 
    "As easy as pie",
    "As keen as mustard",
    "Cut the mustard",
    "Eat drink and be merry",
    "Finger lickin' good",
    "It is meat and drink to me",
    "Let them eat cake ",
    "My cup of tea",
    "Done to a turn",
    "You are what you eat",
    "Whet your appetite"].sample
	end

	def h_rest_name(restaurant)
		title, slogan = restaurant.name.split(/-/)
		{"title" => title, "slogan" => slogan}
	end
end
