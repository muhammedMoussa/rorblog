class AuthorController < ApplicationController
    before_action :authenticate_author!
    # before_action ->{ authenticate_author!(force: true) }

end
