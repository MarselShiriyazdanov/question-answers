class User < ActiveRecord::Base
  has_many :questions, dependent: :destroy
  has_many :answers

  validates :email, presence: true


  def self.from_omniauth(auth)
    where(uid: auth.uid).first_or_initialize.tap do |user|
      user.uid = auth.uid
      user.email = auth.info.email
      user.first_name = auth.info.first_name
      user.last_name = auth.info_last_name
      user.save!
    end
  end
end
