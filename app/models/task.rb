
class Task < ActiveRecord::Base
  def self.add(stuff)
    create(description: stuff)
  end

  def self.delete(id)
    delete_task = self.find_by_id(id)
    delete_task.destroy
    delete_task.save
  end
  
  def self.list
    all
  end

  def self.complete(id)
    completed_task = self.find_by_id(id)
    completed_task.update(complete: true)
    completed_task.save
  end

end
