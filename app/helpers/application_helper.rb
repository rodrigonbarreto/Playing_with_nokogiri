module ApplicationHelper
	def check_admin(user)
		user.kind == 'admin'
	end
end
