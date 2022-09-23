package site.metacoding.superbaseball.web.dto.response.players;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class KickOutDto {
	private Integer id;
	private Integer teamsId;
	private Integer playersId;
	private String teamsName;
	private String playersName;
	private String reason;
	private Timestamp createdAt;
}
