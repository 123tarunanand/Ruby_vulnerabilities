def CWE_23_Path_traversal
  # params - data received during a http request
  #
  # This function takes in a file name and creates a new path in the parent directory
  #
  Pathname.new(File.join(params[:parent], params[:name]))
end
