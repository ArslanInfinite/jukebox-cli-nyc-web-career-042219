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
  puts "- exit : exits this program"
end

def list(my_songs)
  songs = my_songs.keys
  songs.each { |song| puts song }
end

def play(my_songs)
  puts "Please enter a song name or number:"
  res = gets.chomp
  if my_songs.key?(res)
    puts "Playing #{res}"
    system "open " << res
  else
    puts "Invalid input please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
     help
  puts "Please enter a command:"
  cmd = gets.chomp
  until cmd == "exit"
    puts "Please enter a command:"
    cmd = gets.chomp
    case cmd
    when "list"
      list(my_songs)
    when "play"
      play(my_songs)
    when "help"
      help
    when "exit"
      exit_jukebox
      break
    else
      puts "Error"
    end
  end
  exit_jukebox
end
