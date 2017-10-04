class Learningkanjin5 < ApplicationRecord
	belongs_to :user, class_name: 'User', foreign_key: 'user_id'
	has_many :setkanji, class_name: 'Setkanjin5',foreign_key: 'set_id', primary_key: 'set_id'

	def kanjiset
		print (user.id)
		kanji =[]
		self.setkanji.each do |n|
			print "111___"
			print n
			kanji.push(n.kanji)
		end
		kanji
	end

end
