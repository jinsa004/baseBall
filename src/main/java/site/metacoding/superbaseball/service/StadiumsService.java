package site.metacoding.superbaseball.service;

import java.util.List;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import site.metacoding.superbaseball.domain.stadiums.Stadiums;
import site.metacoding.superbaseball.domain.stadiums.StadiumsDao;

@RequiredArgsConstructor
@Service
public class StadiumsService {
	private final StadiumsDao stadiumsDao;

	public Stadiums 구장한건보기(Integer id) {
		return stadiumsDao.findById(id);
	}

	public List<Stadiums> 구장목록보기() {
		return stadiumsDao.findAll();
	}

	public void 구장등록하기(Stadiums stadiums) {
		stadiumsDao.insert(stadiums);
	}
}