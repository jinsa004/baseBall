package site.metacoding.superbaseball.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class playerController {

	@GetMapping("/players/kickOut")
	public String kickOut() {
		return "players/kickOut";
	}
	
	@GetMapping("/players/saveForm")
	public String saveForm() {
		return "players/playerSaveForm";
	}
	
	@GetMapping("/players")
	public String main() {
		return "players/playerList";
	}
}
