class Compy < ApplicationRecord
  belongs_to :user
  belongs_to :competence
  has_many :concepts

  validates :user_id, uniqueness: { scope: :competence_id }

  after_create :notify_all

  private
    def notify_all
      CompyJob.perform_now(self)
    end
end
