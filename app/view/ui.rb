module UI

  def what?
    puts "I don't understand. Try <list>, <delete [task number]>, or <add [your task text here]>"
  end

  def add(task)
    puts "Added task \"#{task}\" to your list"
  end

  def complete(task_index)
    puts "Completed task \"#{Task.all[task_index.to_i-1].description}\"."
  end

  def list
    puts "Your To Do list:"
    display_list
  end

  def remove(task_index)
    puts "Deleted task \"#{Task.all[task_index.to_i-1].description}\"."
  end

  private

  def display_list
    index = 1
    Task.all.each do |x| 
      mark = x.completed == true ? "X" : " "
      puts " %3s)  [%s] %s" % [index, mark, x.description]
      index += 1
    end
  end
end
