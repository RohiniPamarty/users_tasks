class UsersController < ApplicationController
before_filter :authenticate_user!
def index
redirect_to tasks_path
end

end
