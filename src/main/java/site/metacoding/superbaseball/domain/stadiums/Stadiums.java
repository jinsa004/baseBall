package site.metacoding.superbaseball.domain.stadiums;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class Stadiums {
	private Integer id;
	private String stadiumsName;
	
	public Stadiums(String stadiumsName) {
		this.stadiumsName = stadiumsName;
	}
}