

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(array)
  song_list = ""
  array.each_with_index do |songs, index|
    song_list += "#{index + 1}. #{songs}\n"
  end
  puts song_list
end


def play(array)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  array.each_with_index do |song, index|
    song_num = index + 1
     if user_input == song
       puts "Playing #{song}"
     elsif user_input == song_num.to_s
       puts "Playing #{song}"
     else 
       puts "Invalid input, please try again"
     end 
  end 
end 

def exit_jukebox
    puts "Goodbye"
end 

def run
  help
  puts "Please enter a command:"
  user_input = gets.chomp 
  
end 


