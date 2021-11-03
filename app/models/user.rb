class User < ApplicationRecord
  rolify
  has_many :articles, dependent: :destroy
  has_many :comments, dependent: :destroy
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :trackable

#  validate :password_complexity

#  private

#  def password_complexity
#    return if password.nil?
#    errors.add :password, :complexity unless CheckPasswordComplexityService.call(password)
#  end
end
