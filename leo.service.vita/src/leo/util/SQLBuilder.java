package leo.util;

public class SQLBuilder {

	private StringBuilder sql;

	public static SQLBuilder build() {
		return new SQLBuilder();
	}

	public SQLBuilder() {
		sql = new StringBuilder();
	}

	public SQLBuilder select(String cols) {
		sql.append("SELECT ").append(cols);
		return this;
	}

	public SQLBuilder from(String tableName) {
		sql.append(" FROM ").append(tableName);
		return this;
	}

	public SQLBuilder where(String whereArgs) {
		sql.append(" WHERE ").append(whereArgs);
		return this;
	}

	public SQLBuilder limit(int startIndex, int pageSize) {
		sql.append(" LIMIT ").append(startIndex + "," + pageSize);
		return this;
	}

	public SQLBuilder groudby(String groudbyArgs) {
		sql.append(" GROUP BY ").append(groudbyArgs);
		return this;
	}

	public String toString() {
		return sql.toString();
	}

}
