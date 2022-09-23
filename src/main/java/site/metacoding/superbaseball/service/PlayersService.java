package site.metacoding.superbaseball.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import site.metacoding.superbaseball.domain.players.Players;
import site.metacoding.superbaseball.domain.players.PlayersDao;
import site.metacoding.superbaseball.web.dto.request.UpdateDto;

@Service
@RequiredArgsConstructor
public class PlayersService {
	private final PlayersDao playersDao;
	
	public void 선수변경하기(Integer id, UpdateDto updateDto) {
		Players playersPS = playersDao.findById(id);
		playersPS.선수수정(updateDto);
		playersDao.update(playersPS);
	}
	
	public void 선수등록하기(Players players) {
		playersDao.insert(players);
	}
	
	public List<Players> 선수목록보기() {
		return playersDao.findAll();
	}
	
	public Players 선수한건보기(Integer id) {
		return playersDao.findById(id);
	}
}
