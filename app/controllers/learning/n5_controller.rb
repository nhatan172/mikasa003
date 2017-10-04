class Learning::N5Controller < ApplicationController
	before_action :authenticate_user!

  def index
  	@learntKanji = current_user.learntKanji
  	@notLearnKanji  = current_user.notLearnKanji
  end

  def show
  end
end
