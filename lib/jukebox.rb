require "pry"

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

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

def play(array, identifier)
  if identifier.class == String 
     array.each do |song|
       if song.include?(identifier)
        puts song
       end 
     end 
   elsif identifier.class != String && identifier < array.length
     array.each_with_index do |song, index|
       if index == identifier - 1
        puts song
       end 
     end 
   else 
   puts "error"
  end 
end 

puts "Enter your name:"
users_name = gets.chomp
puts "Enter song id:"
identifier = gets.chomp

puts play(users_name, identifier)

play([
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
], 2)
