def CWE_23_Path_traversal
  # params - data received during a http request
  #
  # This function takes in a file name and creates a new text file in the parent directory
  #

  parent = "/path/to/parent_directory"
  Pathname.new(File.join(parent, params[:name]))
end




def sanitize_filename(filename)
  returning filename.strip do |name|
   # NOTE: File.basename doesn't work right with Windows paths on Unix
   # get only the filename, not the whole path
   name.gsub! /^.*(\\|\/)/, ''

   # Finally, replace all non alphanumeric, underscore or periods with underscore
   #            name.gsub! /[^\w\.\-]/, '_'
   #            Basically strip out the non-ascii alphabets too and replace with x. You don't want all _ :)
    name.gsub!(/[^0-9A-Za-z.\-]/, 'x')
  end
end

def CWE_23_Path_traversal_mitigated
  # params - data received during a http request
  #
  # This function takes in a file name and creates a new path in the parent directory
  #

  parent = "/path/to/parent_directory"
  filename = sanitize_filename(params[:name])
  Pathname.new(File.join(parent,filename))

end
