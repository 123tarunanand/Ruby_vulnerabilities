def CWE_23_Path_traversal
  # params - data received during a http request
  #
  # This function takes in a file name and creates a new text file in the parent directory
  #

  parent = "/path/to/parent_directory"
  Pathname.new(File.join(parent, params[:name]))
end





def CWE_23_Path_traversal_mitigated
  # params - data received during a http request
  #
  # This function takes in a file name and creates a new path in the parent directory
  #

  parent = "/path/to/parent_directory"
  Pathname.new(File.join(parent,"#{params[:name]}.txt"))

end
