class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    validates :name , presence: true

    has_many :learntSetKanjiN5, class_name: 'Learningkanjin5', foreign_key: 'user_id'

    def learntKanji
		kanji =[]
		self.learntSetKanjiN5.each do |n|
			n.kanjiset.each do |x|
				kanji.push(x)
			end	
		end
		kanji
	end

	def notLearnKanji
		kanji = self.learntKanji
		idLearntKanji = []
		kanji.each do |n|
			idLearntKanji.push(n.id)
			print n.id
		end
		if kanji.count > 0
			Kanjin5.where('id NOT IN (?)', idLearntKanji)
		else
			Kanjin5.all
		end
	end
end
