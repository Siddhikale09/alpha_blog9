class Element < ApplicationRecord
validates :title, presence: true, length: {minimum: 6, maximum: 50}
validates :details, presence: true, length: {minimum:6, maximum:100}
end
