package site.metacoding.superbaseball.domain.teams;

import java.util.List;

import site.metacoding.superbaseball.web.dto.response.teams.TeamsDto;

public interface TeamsDao {
	public void insert(Teams teams);
	public Teams findById(Integer id);
	public List<TeamsDto> findAll();
	public void deleteById(Integer id);
	public void update(Integer id);
}
