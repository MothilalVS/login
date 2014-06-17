class LoginController < ApplicationController
	def index

	end  	

	def check
		 	@username= params[:username]
	         @password= params[:password]
  		@val=false
	  @user= User.all
	   @user.each do |x|
	      if(x.username==@username && x.password==@password)
				redirect_to controller: "login" , action: 'secure'
				@val=true
			end
		end
		if !@val
				redirect_to :controller => "login", :action => 'login_error'
		end
	end

	def secure
		
	end

	def login_error

	end

	def new_user
		 @username= params[:username]
		 @password= params[:password]
		 @Email= params[:email]
		 
		 p=User.new(username: @username,password: @password,email: @Email)
		 p.save
		  redirect_to controller: "login", action: 'show'
	end

	def show

	end

end
