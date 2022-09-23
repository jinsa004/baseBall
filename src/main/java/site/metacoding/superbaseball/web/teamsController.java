package site.metacoding.superbaseball.web;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import site.metacoding.superbaseball.domain.stadiums.Stadiums;
import site.metacoding.superbaseball.domain.teams.Teams;
import site.metacoding.superbaseball.service.StadiumsService;
import site.metacoding.superbaseball.service.TeamsService;
import site.metacoding.superbaseball.web.dto.response.CMRespDto;
import site.metacoding.superbaseball.web.dto.response.teams.TeamsDto;

@Controller
@RequiredArgsConstructor
public class teamsController {

	private final TeamsService teamsService;
	private final StadiumsService stadiumsService;
	
	@PostMapping("/teams/save")
	public @ResponseBody CMRespDto<?> save(@RequestBody Teams teams) {
		teamsService.팀등록하기(teams);
		return new CMRespDto<>(1, "등록성공", null);
	}
	
	@GetMapping("/teams/saveForm")
	public String saveForm(Model model) {
		List<Stadiums> stadiums = stadiumsService.구장목록보기();
		model.addAttribute("stadiums", stadiums);
		return "teams/teamsSaveForm";
	}
	
	@GetMapping("/teams")
	public String getTeamsList(Model model) {
		List<TeamsDto> TeamsDtos = teamsService.팀목록보기();
		model.addAttribute("TeamsDtos", TeamsDtos);
		return "teams/teamsList";
	}
	@GetMapping("/")
	public String mainMain() {
		return "layout/main";
	}
}