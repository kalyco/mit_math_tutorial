class TutorialStatus < ActiveRecord::Base
  belongs_to :user
  has_many :tutorials
end
