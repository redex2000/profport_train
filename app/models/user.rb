# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(50)
#  password               :string(20)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  admin                  :boolean          default(FALSE)
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :concepts

  before_create { self.token = generate_token }

  def admin?
    admin
  end

  def learning?(smth)
    if smth.respond_to? :user_ids
      smth.user_ids.include? id
    else
      false
    end
  end

  def generate_token
    loop do
      token = SecureRandom.base64(32)
      break token unless User.exists? token: token
    end
  end
end
