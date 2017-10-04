class Setkanjin5 < ApplicationRecord
	has_one :kanji, class_name: 'Kanjin5', primary_key: 'kanji_id', foreign_key: 'id'
end
