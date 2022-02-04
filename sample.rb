def CWE_23_Path_traversal
  # params - data received during a http request
  #
  # This function takes in a file name and creates a new text file in the parent directory
  #

  parent = "/path/to/parent_directory"
  Pathname.new(File.join(parent, params[:name]))
end




def sanitize_filename(filename)
  # function that sanitizes an input by ensuring it consists of only alphanumeric characters
  returning filename.strip do |name|
   name.gsub! /^.*(\\|\/)/, ''
    name.gsub!(/[^0-9A-Za-z.\-]/, 'x')
  end
end

def CWE_23_Path_traversal_mitigated
  # params - data received during a http request
  #
  # This function takes in a file name and creates a new path in the parent directory
  #
  parent = "/path/to/parent_directory"
  # sanitize user input
  filename = sanitize_filename(params[:name])
  Pathname.new(File.join(parent,filename))

end
