package site.metacoding.superbaseball.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import site.metacoding.superbaseball.domain.teams.Teams;
import site.metacoding.superbaseball.domain.teams.TeamsDao;
import site.metacoding.superbaseball.web.dto.response.teams.TeamsDto;

@RequiredArgsConstructor
@Service
public class TeamsService {
	private final TeamsDao teamsDao;
	
	public void 팀등록하기(Teams teams) {
		teamsDao.insert(teams);
	}
	
	public List<TeamsDto> 팀목록보기(){
		return teamsDao.findAll();
	}
}
