package leo.util;

public class Response {

	private int status;
	private String msg;
	private Object result;

	public Response() {
		// TODO Auto-generated constructor stub
	}

	public Response(int status, String msg, Object result) {
		this.status = status;
		this.msg = msg;
		this.result = result;
	}

	public static Response success(Object result) {
		Response resp = new Response(Status.Code.OK, Status.Msg.OK, result);
		return resp;
	}

	public static Response error() {
		Response resp = new Response(Status.Code.INTERNAL_SERVER_ERROR, Status.Msg.INTERNAL_SERVER_ERROR_MSG, null);
		return resp;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public Object getResult() {
		return result;
	}

	public void setResult(Object result) {
		this.result = result;
	}

}
