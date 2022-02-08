import java.nio.file.Path;
import java.nio.file.Paths;
import java.io.*;
import java.util.Scanner;
import java.io.IOException;

public class Main {

  static void CWE_23_Path_traversal(String name){
    String parent = "/path/to/parent/directory";
    File prefix = new File(parent);
    File path = new File(prefix,name);
    try{
        System.out.println(path.getCanonicalPath());
    }
    catch(IOException e)
    {
      return ;
    }
  }


  static void CWE_78_OS_injection(){
    try
    {
      Scanner myObj = new Scanner(System.in);
      String cmd = myObj.nextLine();
    Process process = Runtime.getRuntime().exec(cmd);
    BufferedReader stdInput = new BufferedReader(new InputStreamReader(process.getInputStream()));

    String s = null;
    while ((s = stdInput.readLine()) != null) {
      System.out.println(s);
    }
    }
     catch (IOException e) {
       return;
     }
  }

  public static void main(String[] args)
  {
    Scanner myObj = new Scanner(System.in);
    String name = myObj.nextLine();
    CWE_23_Path_traversal(name);
    CWE_78_OS_injection();
  }
}
