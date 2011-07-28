require "note/version"

module Note
  # Your code goes here...

  def check_file
    `touch #{notes}` unless File.exist? notes
  end

  def notes
    "#{ENV['HOME']}/.notes"
  end

  def get_hash
    check_file
    eval(File.open(notes, 'r') { |f| f.read })
  end

  def save_hash(hash)
    File.open(notes, "w").write(hash.to_s)
  end

  def create(key)
    print "what value do you want to assign to this key? "
    string = STDIN.gets.strip
    hash = get_hash
    hash = {} if hash == nil
    hash[key] = string
    save_hash hash
  end
  
  def delete(key)
    hash = get_hash
    hash.delete(key)
    save_hash(hash)
  end
  
  def execute(key)
    exec(get_hash[key])
  end
  
  def show(key)
    if get_hash[key]
      puts get_hash[key]
    else
      puts "Key does not exist."
    end
  end
  
  def list
    get_hash.each do |key, value|
      puts key
    end
  end

  def help
    puts ""
    puts "note -l        Lists all note names"
    puts "note -c <key>  Create a new note"
    puts "note -d <key>  Delete a existing note"
    puts "note -e <key>  Try executing the key"
    puts "note -h        Display Help"
    puts "note <key>     Display the note for the given key"
    puts ""
  end

end
