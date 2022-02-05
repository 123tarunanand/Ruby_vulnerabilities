function CWE_23_Path_traversal () {

  var filename = $.url().param('name');
  var parent = "/path/to/parent_directory";
  path.join(parent,filename) ;
}
