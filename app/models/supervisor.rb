class Supervisor < ActiveRecord::Base
  has_many :managers
  has_many :employees, through: :manager
  belongs_to :ceo

  def self.by_salary
    self.all.order(salary: :desc)
  end

  def self.lowest_salary
    self.all.order(salary: :desc).last
  end

  def self.highest_salary
    self.all.order(salary: :desc).first
  end
end
