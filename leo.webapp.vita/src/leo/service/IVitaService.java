package leo.service;

import java.util.HashSet;
import java.util.List;

import leo.base.IBaseService;
import leo.bean.Skill;
import leo.bean.UserOverview;

public interface IVitaService extends IBaseService {

	HashSet<UserOverview> getPreviewVitas(List<Integer> skillIds, int startIndex, int pageSize);

	List<Skill> getSkills();
}
