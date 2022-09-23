package site.metacoding.superbaseball.domain.players;

import java.util.List;

public interface PlayersDao {
	public void insert(Players players);
	public Players findById(Integer id);
	public List<Players> findAll();
	public void deleteById(Integer id);
	public void update(Players players);
}
