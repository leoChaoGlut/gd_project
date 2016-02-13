package leo.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import leo.bean.Chart;

@Repository
public interface ChartMapper {

	int insertOne(Chart chart);

	List<Chart> selectMore(String email);
}
