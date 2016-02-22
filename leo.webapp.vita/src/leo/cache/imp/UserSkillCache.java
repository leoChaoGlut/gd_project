package leo.cache.imp;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import leo.bean.Skill;
import leo.cache.IBaseCache;

/**
 * 
 * @author leo 由于要保证数据准确性,所以不能使用softreference
 */
public class UserSkillCache implements IBaseCache<Integer, List<Skill>> {
	private HashMap<Integer, List<Skill>> cacheMap = new HashMap<>();

	public UserSkillCache() {
		// TODO Auto-generated constructor stub

	}

	@Override
	public void set(Integer userId, List<Skill> skills) {
		// TODO Auto-generated method stub
		if (skills == null) {
			try {
				throw new Exception("UserSkillCache isn't allow null value");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		cacheMap.put(userId, new ArrayList<Skill>(skills));
	}

	@Override
	public List<Skill> get(Integer userId) {
		// TODO Auto-generated method stub
		return cacheMap.get(userId);
	}

}
