class User < ApplicationRecord

  has_many :nanny_jobs, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         enum role: { nanny: 0, guardian: 1 }
end