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
import site.metacoding.superbaseball.service.StadiumsService;
import site.metacoding.superbaseball.web.dto.response.CMRespDto;

@Controller
@RequiredArgsConstructor
public class stadiumsController {

	private final StadiumsService stadiumsService;

	@PostMapping("/stadiums/save")
	public @ResponseBody CMRespDto<?> save(@RequestBody Stadiums stadiums) {
		stadiumsService.구장등록하기(stadiums);
		return new CMRespDto<>(1, "등록성공", null);
	}

	@GetMapping("/stadiums/saveForm")
	public String saveForm() {
		return "stadiums/stadiumsSaveForm";
	}

	@GetMapping("/stadiums")
	public String getStadiumsList(Model model) {
		List<Stadiums> stadiums = stadiumsService.구장목록보기();
		model.addAttribute("stadiums", stadiums);
		return "stadiums/stadiumsList";
	}
}