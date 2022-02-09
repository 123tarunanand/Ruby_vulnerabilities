import java.nio.file.Path;
import java.nio.file.Paths;
import java.io.*;
import java.util.Scanner;
import java.io.IOException;

public class Main {

  static void CWE_23_Path_traversal(String name){
    //
    // This function takes in a file name and creates a new text file in the parent directory
    String parent = "/path/to/parent/directory";
    File prefix = new File(parent);
    File path = new File(prefix,name);
  }

  static String sanitize(String name) {
      return name.replaceAll("[^a-zA-Z0-9]", "");
  }

  static void CWE_23_Path_traversal_mitigated(String name){
    //
    // This function takes in a file name and creates a new text file in the parent directory
    String parent = "/path/to/parent/directory";
    // Sanitize user input
    name = sanitize(name);
    File prefix = new File(parent);
    File path = new File(prefix,name);
  }


  static void CWE_78_OS_injection(){
    //
    // This function executes a command received from user
    try
    {
      Scanner myObj = new Scanner(System.in);
      String cmd = myObj.nextLine();
      Process process = Runtime.getRuntime().exec(cmd);
    }
     catch (IOException e) {
       return;
     }
  }

  static void CWE_78_OS_injection_mitigated(){
    //
    // This function executes a command received from user
    try
    {
      Scanner myObj = new Scanner(System.in);
      // Only allow user to pass parameters
      String cmd = "ls";
      String cmd_params = myObj.nextLine();
      // Pass the command and parameters without running shell code
      String[] cmd_run = {cmd,cmd_params};
      Process process = Runtime.getRuntime().exec(cmd_run);
    }
     catch (IOException e) {
       return;
     }
  }

  public static void main(String[] args)
  {
    Scanner myObj = new Scanner(System.in);
    String name = myObj.nextLine();
    CWE_23_Path_traversal_mitigated(name);
    CWE_78_OS_injection_mitigated();
  }
}
