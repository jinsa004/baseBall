package site.metacoding.superbaseball.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.RequiredArgsConstructor;
import site.metacoding.superbaseball.service.TeamsService;

@Controller
@RequiredArgsConstructor
public class teamController {

	final TeamsService teamsService;
	
	@GetMapping("/team/saveForm")
	public String saveForm() {
		return "team/teamSaveForm";
	}
	
	@GetMapping("/team")
	public String teamMain() {
		
		return "team/teamList";
	}
	
	@GetMapping("/")
	public String getMain() {
		return "layout/main";
	}
}