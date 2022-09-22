package site.metacoding.superbaseball.domain.teams;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Teams {
	private Integer id;
	private String name;
	private Integer stadiumsId;
	private Timestamp createdAt;
}
