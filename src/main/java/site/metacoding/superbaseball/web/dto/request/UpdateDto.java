package site.metacoding.superbaseball.web.dto.request;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class UpdateDto {
	private String playersName;
	private Integer teamsId;
	private String position;
}