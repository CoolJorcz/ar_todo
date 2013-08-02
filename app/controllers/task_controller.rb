require_relative '../models/task.rb'

class TaskController
  def self.add(stuff)
    Task.add(stuff)
  end

  def self.delete(list_number)
    Task.delete(list_number - 1)
  end

  def self.list
    Task.list.to_a
  end

  def self.complete(list_number)
    Task.complete(list_number - 1)
  end
end

p TaskController.list
