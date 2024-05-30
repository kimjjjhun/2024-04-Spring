package ex01;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

public class ReadToFile {
	
	public static void main(String[] args) {
		 try {
			 	//입력 스트림 생성
			 	InputStream in = new FileInputStream("c:/upload/data.dat");
				int data = in.read();
				in.close();
				System.out.println(data);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
