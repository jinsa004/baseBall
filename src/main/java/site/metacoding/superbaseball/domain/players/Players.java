package site.metacoding.superbaseball.domain.players;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;
import site.metacoding.superbaseball.web.dto.request.UpdateDto;

@Getter
@Setter
public class Players {
	private Integer id;
	private String playersName;
	private Integer teamsId;
	private String position;
	private Timestamp createdAt;
	
	public void 선수수정(UpdateDto updateDto) {
		this.playersName = updateDto.getPlayersName();
		this.teamsId = updateDto.getTeamsId();
		this.position = updateDto.getPosition();
	}
}
