package site.metacoding.superbaseball.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class stadiumController {

	@GetMapping("/stadium/saveForm")
	public String saveForm() {
		return "stadium/stadiumSaveForm";
	}
	
	@GetMapping("/stadium")
	public String main() {
		return "stadium/stadiumList";
	}
}