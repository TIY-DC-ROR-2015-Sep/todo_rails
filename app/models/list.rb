class List < ActiveRecord::Base
  belongs_to :user
  has_many :items

  validates_presence_of :user_id, :name
end
