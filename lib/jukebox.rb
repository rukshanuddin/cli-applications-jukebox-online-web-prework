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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  if input.to_i > 0 && input.to_i < songs.length
    puts "Playing #{songs[input.to_i-1]}"
  elsif songs.include?(input)
    puts "Playing #{input}"
  else
    puts "Invalid input, please try again."
  end
end
def exit_jukebox
  puts "Goodbye"
end
def list(songs)
  songs.each_with_index {|song,index|
  puts "#{index + 1}. #{song}"}
end
def run(songs)
  puts "Please enter a command:"
  command = gets.strip
  if command == "play"
    play(songs)
    run(songs)
  elsif command == "help"
    help
    run(songs)
  elsif command == "list"
    list(songs)
    run(songs)
  elsif command == "exit"
    exit_jukebox
  end


end
