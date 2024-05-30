package ex03;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;

public class SimpleRead {
	public static void main(String[] args) {
		
		 try {
			Reader in = new FileReader("c:/upload/data.txt");
			
			int ch;
			
			while(true) {
				ch = in.read();
				if(ch == -1) break;
				
				System.out.print((char)ch);
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
