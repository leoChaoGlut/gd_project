package leo.util;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.List;

import com.alibaba.fastjson.JSON;

public class JSONFileReader {

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
			e.printStackTrace();
		} finally {
			closeResource(fr, br);
		}
		return list;
	}

	public static String getStringContent(String filePath) {
		FileReader fr = null;
		BufferedReader br = null;
		try {
			fr = new FileReader(filePath);
			br = new BufferedReader(fr);
			String lineData = "";
			StringBuilder sb = new StringBuilder();
			while ((lineData = br.readLine()) != null) {
				sb.append(lineData);
			}
			return sb.toString();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeResource(fr, br);
		}
		return null;
	}

	private static void closeResource(FileReader fr, BufferedReader br) {
		if (br != null) {
			try {
				br.close();
			} catch (IOException e) {
				e.printStackTrace();
			} finally {
				if (fr != null) {
					try {
						fr.close();
					} catch (IOException e) {
						e.printStackTrace();
					}
				}
			}
		}
	}
}
