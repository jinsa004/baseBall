package site.metacoding.superbaseball.web;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import site.metacoding.superbaseball.domain.players.Players;
import site.metacoding.superbaseball.domain.stadiums.Stadiums;
import site.metacoding.superbaseball.service.PlayersService;
import site.metacoding.superbaseball.service.StadiumsService;
import site.metacoding.superbaseball.service.TeamsService;
import site.metacoding.superbaseball.web.dto.response.CMRespDto;
import site.metacoding.superbaseball.web.dto.response.players.KickOutDto;
import site.metacoding.superbaseball.web.dto.response.teams.TeamsDto;

@Controller
@RequiredArgsConstructor
public class playersController {
	
	private final PlayersService playersService;
	private final TeamsService teamsService;
	private final StadiumsService stadiumsService;
	
	@PostMapping("/players/KickOutSave")
	public @ResponseBody CMRespDto<?> kickOutSave(@RequestBody KickOutDto kickOutDto) {
		playersService.선수퇴출하기(kickOutDto);
		return new CMRespDto<>(1, "퇴출성공", null);
	}
	
	@PostMapping("/players/save")
	public @ResponseBody CMRespDto<?> save(@RequestBody Players players) {
		playersService.선수등록하기(players);
		return new CMRespDto<>(1, "등록성공", null);
	}
	
	@GetMapping("/players/saveForm")
	public String saveForm(Model model) {
		List<Stadiums> stadiums = stadiumsService.구장목록보기();
		List<TeamsDto> teams = teamsService.팀목록보기();
		model.addAttribute("stadiums", stadiums);
		model.addAttribute("teams", teams);
		return "players/playersSaveForm";
	}
	
	@GetMapping("/players")
	public String getPlayersList(Model model) {
		List<Players> players = playersService.선수목록보기();
		model.addAttribute("players", players);
		return "players/playersList";
	}
	
	@GetMapping("/players/kickOut")
	public String getKickOutList(Model model) {
		List<KickOutDto> kickOutPS = playersService.퇴출선수목록보기();
		model.addAttribute("kickOut", kickOutPS);
		return "players/kickOut";
	}
	
	@GetMapping("/players/kickOutSaveForm")
	public String kickOutForm(Model model) {
		List<Players> players = playersService.선수목록보기();
		List<TeamsDto> teams = teamsService.팀목록보기();
		model.addAttribute("players", players);
		model.addAttribute("teams", teams);
		return "/players/kickOutSaveForm";
	}
}
