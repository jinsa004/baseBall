package site.metacoding.superbaseball.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class teamController {

	@GetMapping("/team/saveForm")
	public String saveForm() {
		return "team/teamSaveForm";
	}
	
	@GetMapping("/team")
	public String main() {
		return "team/teamList";
	}
	
	@GetMapping("/")
	public String mainMain() {
		return "layout/main";
	}
}