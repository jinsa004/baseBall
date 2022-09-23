package site.metacoding.superbaseball.domain.teams;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class Teams {
	private Integer id;
	private String teamsName;
	private Integer stadiumsId;
	private Timestamp createdAt;
}