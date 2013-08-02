require_relative 'config/application'

# puts "Put your application code in #{File.expand_path(__FILE__)}"
input = ARGV[0]

case input

when 'add'
  input.shift

when 'delete'
  input.shift
  
    #Call controller
    "Deleted \"#{}"

  when 'list'

    TaskController.list.each_index do |index|
      "#{list_number} #{List.description[list_number]}"
    end
    when 'complete'

    end
