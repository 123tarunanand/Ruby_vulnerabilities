def CWE_23_Path_traversal


  if params[:relativePath] && params[:relativePath] != "null"
    Pathname.new(File.join(params[:parent], params[:relativePath]))
  else
    Pathname.new(File.join(params[:parent], params[:name]))
  end
end
