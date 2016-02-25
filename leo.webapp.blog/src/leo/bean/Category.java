package leo.bean;

/**
 * 
 * @author leo
 * @Date 2016年2月25日
 * @Comments 文章目录
 */
public class Category {
	private String name;
	private int id;
	private int count;

	public Category() {
		// TODO Auto-generated constructor stub
	}

	public Category(String name, int id, int count) {
		this.name = name;
		this.id = id;
		this.count = count;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	@Override
	public String toString() {
		return "Category [name=" + name + ", id=" + id + ", count=" + count + "]";
	}

}
