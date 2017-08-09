class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
            :recoverable, :rememberable, :trackable, :validatable
  has_many :performance_data, class_name: 'PerformanceData'
    include DeviseTokenAuth::Concerns::User
  end
