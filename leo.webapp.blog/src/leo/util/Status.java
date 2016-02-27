package leo.util;

public class Status {
	public class Code {
		public static final int OK = 200;
		public static final int UNAUTHORIZED = 401;
		public static final int FORBIDDEN = 403;
		public static final int NOT_FOUND = 404;
		public static final int INTERNAL_SERVER_ERROR = 500;
	}

	public class Msg {
		public static final String OK = "OK";
		public static final String UNAUTHORIZED = "UNAUTHORIZED";
		// public static final String FORBIDDEN_MSG = 403;
		public static final String NOT_FOUND = "NOT_FOUND_MSG";
		public static final String INTERNAL_SERVER_ERROR_MSG = "INTERNAL_SERVER_ERROR_MSG ";

	}

}
