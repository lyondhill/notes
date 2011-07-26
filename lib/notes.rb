require "notes/version"

module Notes
  # Your code goes here...

  def check_file
    `touch #{notes}` unless File.exist? notes
  end

  def running_on_windows?
    RUBY_PLATFORM =~ /mswin32|mingw32/
  end


  def notes
    "#{ENV['HOME']}/.notes"
  end

  def get_hash
    check_file
    eval(File.open(notes, 'r') { |f| f.read })
  end

  def save_hash(hash)
    puts "SHOULD BE SAVING #{hash}"
  end

  def create(key)
    print "what value do you want to assign to this key? "
    string = STDIN.gets.strip
    hash = get_hash
    hash = {} if hash == nil
    hash[key] = string
    save_hash hash
  end
  
  def destroy(key)
    
  end
  
  def list
    get_hash.each do |key, value|
      puts key
    end
  end

  def help
    puts ""
    puts "-l         Lists all note names"
    puts "-c <name>  Create a new note"
    puts "-d <name>  Delete a existing note"
    puts ""
  end

end
