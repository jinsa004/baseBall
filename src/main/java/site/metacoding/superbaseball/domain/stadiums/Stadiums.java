package site.metacoding.superbaseball.domain.stadiums;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


@NoArgsConstructor
@Getter
@Setter
public class Stadiums {
	private Integer id;
	private String name;
	private Timestamp createdAt;
	
	public Stadiums(String name) {
		this.name = name;
	}
	
	
}
