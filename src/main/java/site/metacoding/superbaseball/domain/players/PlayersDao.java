package site.metacoding.superbaseball.domain.players;

import java.util.List;

import site.metacoding.superbaseball.web.dto.response.players.KickOutDto;

public interface PlayersDao {
	public void insert(Players players);
	public Players findById(Integer id);
	public List<Players> findAll();
	public void deleteById(Integer id);
	public void update(Players players);
	public List<KickOutDto> findKickOutAll();
	public void kickOut(KickOutDto kickOutDto);
}
