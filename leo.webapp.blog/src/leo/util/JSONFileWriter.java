package leo.util;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;

import com.alibaba.fastjson.JSON;

public class JSONFileWriter {

	@SuppressWarnings("unchecked")
	public static void write(Object obj, String targetPath) {
		FileWriter fw = null;
		BufferedWriter bw = null;
		try {
			fw = new FileWriter(targetPath);
			bw = new BufferedWriter(fw);
			String jsonString = JSON.toJSONString(obj);
			bw.write(jsonString);
			bw.flush();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeResource(fw, bw);
		}
	}

	private static void closeResource(FileWriter fw, BufferedWriter bw) {
		if (bw != null) {
			try {
				bw.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				if (fw != null) {
					try {
						fw.close();
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			}
		}
	}
}
