require_relative '../../config/application'


class Task < ActiveRecord::Base

  validates :description, presence: true

  def self.complete(task_number)
    task = Task.all[task_number.to_i-1]
    task.completed = true
    task.save
  end

  def self.list
  end

  def self.add(task)
    Task.create(:description => task)
  end

  def self.remove(task_number)
    Task.all[task_number.to_i-1].destroy
  end

end
