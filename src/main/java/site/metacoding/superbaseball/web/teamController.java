package site.metacoding.superbaseball.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class teamController {

	@GetMapping("/teams/saveForm")
	public String saveForm() {
		return "teams/teamSaveForm";
	}
	
	@GetMapping("/teams")
	public String main() {
		return "teams/teamList";
	}
	
	@GetMapping("/")
	public String mainMain() {
		return "layout/main";
	}
}