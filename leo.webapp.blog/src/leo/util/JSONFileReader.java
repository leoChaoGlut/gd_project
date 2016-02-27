package leo.util;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.Reader;
import java.util.List;

import com.alibaba.fastjson.JSON;

public class JSONFileReader {

	@SuppressWarnings("unchecked")
	public static <T> List<T> parseArray(Class<T> clz, String jsonFilePath) {
		FileReader fr = null;
		BufferedReader br = null;
		List<T> list = null;
		try {
			fr = new FileReader(jsonFilePath);
			br = new BufferedReader(fr);
			String lineData = "";
			StringBuffer sb = new StringBuffer();
			while ((lineData = br.readLine()) != null) {
				sb.append(lineData);
			}
			list = JSON.parseArray(sb.toString(), clz);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeResource(fr, br);
		}
		return list;
	}

	private static void closeResource(FileReader fr, BufferedReader br) {
		if (br != null) {
			try {
				br.close();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				if (fr != null) {
					try {
						fr.close();
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			}
		}
	}
}
