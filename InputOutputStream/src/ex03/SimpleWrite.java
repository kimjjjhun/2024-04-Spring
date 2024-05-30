package ex03;

import java.io.FileWriter;
import java.io.IOException;

public class SimpleWrite {
	public static void main(String[] args) {
		
		
		try {
			//파일에 문자 작성
			FileWriter out = new FileWriter("c:/upload/data.txt");
			out.write('A');
			out.write('B');
			out.write("kimjeonghun");
			out.write("=============");
			out.write("korea",2,2);
			out.write('\n');   //줄바꿈
			out.write("korea");
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
