class Item < ActiveRecord::Base
  belongs_to :list

  validates_presence_of :list, :description

  def is_complete!
    if completed_at.nil?
      update! completed_at: Time.now
    end
  end

  def complete?
    ! completed_at.nil?
  end
end
