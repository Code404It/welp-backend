class Kid < ApplicationRecord
    has_many :reviews

    def average_score
        reviews.average(:score).round(2).to_f
    end
end
