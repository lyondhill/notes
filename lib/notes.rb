require "notes/version"

module Notes
  # Your code goes here...

  def get_hash
    # read file
    # convert string to hash
    hash = {"key" => "value"}
    eval(File.open("~/.file", "r").read)
    
  end

  def save_hash(hash)
    
  end


  def create(key)
    puts "what value do you want to assign to this key?"
    string = IOSOEMTHING.gets.strip
    hash = get_hash
    hash[key] = string
    save_hash hash
  end
  
  def list
    get_hash.each do |key, value|
      puts key
    end
  end

  def hello
    puts "hello"
  end

end
