class Cron < ApplicationRecord
  has_many :executions, inverse_of: :cron
end
