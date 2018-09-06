class Post < ApplicationRecord
    extend FriendlyId
    friendly_id :title, use: :slugged

    scope :most_recent, -> { order(id: :desc)}

    def publish_day
        "Published #{created_at.strftime('%-b %-d, %-Y')}"
    end

end
