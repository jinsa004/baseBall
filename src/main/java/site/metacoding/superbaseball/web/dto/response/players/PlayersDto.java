package site.metacoding.superbaseball.web.dto.response.players;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class PlayersDto {
	private Integer id;
	private String playersName;
	private String teamsName;
	private String position;
}
