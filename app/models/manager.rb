class Manager < ActiveRecord::Base
  belongs_to :ceo
  belongs_to :supervisor
  has_many :employees

  def self.by_salary
    self.all.order(salary: :desc)
  end

  def self.lowest_salary
    self.all.order(salary: :asc)
  end
end
