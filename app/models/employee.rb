class Employee < ActiveRecord::Base
  belongs_to :manager
  belongs_to :supervisor
  belongs_to :ceo

  def self.by_salary
    self.all.order(salary: :desc)
  end

  def self.lowest_salary
    self.all.order(salary: :asc)
  end
end
