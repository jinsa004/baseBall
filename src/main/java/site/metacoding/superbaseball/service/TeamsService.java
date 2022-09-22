package site.metacoding.superbaseball.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import site.metacoding.superbaseball.domain.teams.Teams;
import site.metacoding.superbaseball.domain.teams.TeamsDao;

@RequiredArgsConstructor
@Service
public class TeamsService {
	
	final TeamsDao teamsDao;
	
	public List<Teams> 팀목록보기() {
		return teamsDao.findAll();
	}
	
	public String 팀등록하기(Teams teams) {
		teamsDao.insert(teams);
		return null;
	}
}
