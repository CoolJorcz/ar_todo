require_relative 'config/application'
require_relative 'app/controllers/task_controller'
# puts "Put your application code in #{File.expand_path(__FILE__)}"
command = ARGV[0]
ARGV.shift
input = ARGV.join(' ')

case command

when 'add'
  TaskController.add(input)
  puts "Adding #{input} to tasks..."
when 'list'
  TaskController.list.each_with_index do |task, index|
    if task.complete
      puts "#{index + 1}. #{task.description} - complete"
    else 
      puts "#{index + 1}. #{task.description}" 
    end
  end
when 'delete'
  deleted_object = TaskController.delete(input.to_i)
  puts "Deleted #{deleted_object.description} from tasks"
when 'complete'
  TaskController.complete(input.to_i)
end



