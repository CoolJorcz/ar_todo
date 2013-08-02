require_relative '../../config/application.rb'

class Task < ActiveRecord::Base
  def self.add(stuff)
    create(description: stuff)
  end

  def self.delete(list_number)
    all[list_number].destroy
  end

  def self.list
    all
  end

  def self.complete(list_number)
    completed_task = all[list_number]
    completed_task.update(complete: true)
    completed_task.save
  end
end
