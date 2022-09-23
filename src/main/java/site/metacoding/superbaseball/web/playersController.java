package site.metacoding.superbaseball.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class playersController {

	@GetMapping("/player/kickOut")
	public String kickOut() {
		return "player/kickOut";
	}
	
	@GetMapping("/player/saveForm")
	public String saveForm() {
		return "player/playerSaveForm";
	}
	
	@GetMapping("/player")
	public String main() {
		return "player/playerList";
	}
}
