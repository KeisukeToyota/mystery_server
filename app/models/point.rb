class Point < ApplicationRecord
  belongs_to :event
  belongs_to :recent_point, foreign_key: 'recent_point_id', class_name: 'Point', optional: true
end
