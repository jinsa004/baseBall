package site.metacoding.superbaseball.domain.stadiums;

import java.util.List;

public interface StadiumsDao {
	public void insert(Stadiums stadiums);
	public Stadiums findById(Integer id);
	public List<Stadiums> findAll();
	public void deleteById(Integer id);
	public void update(Integer id);
}