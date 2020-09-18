class User < ApplicationRecord
  require 'csv'
  after_create :welcome_send
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_many :projects
  has_many :bank_details

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end

  def self.to_csv(table_name)
    CSV.generate(headers: true) do |f|
      f << all.first.attributes.map do |a, v|
        if !a.include? "password"
          a
        end
      end
      all.each do |t|
        f << t.attributes.map do |a, v|
          if !a.include? "password"
            v
          end
        end
      end
    end
  end
end
