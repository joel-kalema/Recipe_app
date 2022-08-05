class ApplicationController < ActionController::Base # rubocop:todo Layout/EndOfLine
  before_action :authenticate_user!
end
