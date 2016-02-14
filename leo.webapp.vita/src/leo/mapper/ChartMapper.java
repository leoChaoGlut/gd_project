package leo.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import leo.bean.Chart;
import leo.bean.ChartPreview;

@Repository
public interface ChartMapper {

	int insertOne(Chart chart);
	
	int updateOne(Chart chart);
	
//	int deleteOnePhysically(Integer id);
	
	int deleteOneByStatus(Integer id);

	List<ChartPreview> selectMore(String email);
}
