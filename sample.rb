def uppy_upload_path
  # careful:
  #
  #     File.join '/a/b', '/c' => '/a/b/c'
  #     Pathname.new('/a/b').join('/c') => '/c'
  #
  # handle case where uppy.js sets relativePath to "null"
  if params[:relativePath] && params[:relativePath] != "null"
    Pathname.new(File.join(params[:parent], params[:relativePath]))
  else
    Pathname.new(File.join(params[:parent], params[:name]))
  end
end
