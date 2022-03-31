class Ceo < ActiveRecord::Base
  has_many :supervisors
  has_many :managers, through: :supervisors
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
