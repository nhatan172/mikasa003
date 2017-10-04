class Learning::LearningController < ApplicationController
  def home
  	@learntKanji = current_user.learntKanji
  	@notLearnKanji  = current_user.notLearnKanji
  	@n5_process = (78.to_f/(Kanjin5.all.count)*100).to_i
  	print @n5_process
  end
end
