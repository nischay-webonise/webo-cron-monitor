class Execution < ApplicationRecord
  belongs_to :cron, inverse_of: :executions

  scope :for_cron, lambda { |cron_id|
    where(cron_id: cron_id)
  }
end
