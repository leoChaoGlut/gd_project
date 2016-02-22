package leo.service.imp;

import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import leo.bean.Skill;
import leo.bean.UserOverview;
import leo.mapper.SkillMapper;
import leo.mapper.VitaMapper;
import leo.service.IVitaService;

@Service
@Transactional
public class VitaServiceImp implements IVitaService {
	private Logger log = Logger.getLogger(this.getClass());

	@Autowired
	VitaMapper vitaMapper;
	
	@Autowired
	SkillMapper skillMapper;

	@Override
	public HashSet<UserOverview> getPreviewVitas(List<Integer> skillIds, int startIndex, int pageSize) {
		// TODO Auto-generated method stub
		List<UserOverview> userPreviewList = vitaMapper.selectPage(skillIds, startIndex, pageSize);
		HashSet<UserOverview> userPreviewSet = removeRepeatedItem(userPreviewList);
		return userPreviewSet;
	}

	@Override
	public List<Skill> getSkills() {
		// TODO Auto-generated method stub
		List<Skill> skills = skillMapper.selectMore();
		return skills;
	}

	private HashSet<UserOverview> removeRepeatedItem(List<UserOverview> userPreviewList) {
		if (userPreviewList.isEmpty()) {
			return null;
		} else {
			HashMap<String, UserOverview> userPreviewMap = new HashMap<>();
			for (UserOverview newUserPreview : userPreviewList) {
				String email = newUserPreview.getEmail();
				UserOverview oldUserPreview = userPreviewMap.get(email);
				if (oldUserPreview == null) {
					userPreviewMap.put(email, newUserPreview);
				} else {
					oldUserPreview.addSkillName(newUserPreview.getSkillName());
					userPreviewMap.put(email, oldUserPreview);
				}
			}
			HashSet<UserOverview> userPreviewSet = new HashSet<>();
			Set<Entry<String, UserOverview>> entrySet = userPreviewMap.entrySet();
			for (Entry<String, UserOverview> entry : entrySet) {
				userPreviewSet.add(entry.getValue());
			}
			return userPreviewSet;
		}

	}

}
