# Custom Exceptions

class BlogDataNotFound < StandardError; end
class BlogDataFormatError < StandardError; end


# Simulated Method to Load Blog data

def load_blog_data(file_name)
  # Simulating different errors for demonstration purposes

  case file_name
  when "missing_file"
    raise BlogDataNotFound, "The file was not found"
  when "Invalid_file"
    raise BlogDataFormatError, "The file format is invalid"
  else
    # Simulating successful file load
    "Blog data loaded successfully from #{file_name}"
  end
  end

# Example Usage
file_name = "missing_file" # Change this to test different scenarios

begin
  content = load_blog_data(file_name)
  puts content
rescue BlogDataNotFound
  STDERR.puts "File #(file_name} not found"
rescue BlogDataFormatError
  STDERR.puts "Invalid blog data in #{file_name}"
rescue Exception => exc
  STDERR.puts "General error loading #{file_name}: #{exec.message}"

end
