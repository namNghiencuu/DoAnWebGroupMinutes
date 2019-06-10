package minutes.com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import minutes.com.entities.Post;
import minutes.com.services.PostService;

@Controller
public class PostController {
	@Autowired
	private PostService postService;

	@RequestMapping(value = { "/post-list" }, method = RequestMethod.GET)
	public String listPost(Model model) {
		model.addAttribute("listPost", postService.findAll());
		return "post-list";
	}

	@RequestMapping(value = "/post-save", method = RequestMethod.POST)
	public String insertPost(Model model) {
		model.addAttribute("post", new Post());
		return "post-save";
	}

	@RequestMapping(value = "/post-view/{id}", method = RequestMethod.GET)
	public String viewPost(@PathVariable int id, Model model) {
		Post post = postService.findById(id);
		model.addAttribute("post", post);
		return "post-view";
	}

	@RequestMapping(value = "/post-update/{id}", method = RequestMethod.PUT)
	public String updatePost(@PathVariable int id, Model model) {
		Post post = postService.findById(id);
		model.addAttribute("post", post);
		return "post-update";
	}

	@RequestMapping(value = "/savePost", method = RequestMethod.POST)
	public String doSavePost(@ModelAttribute("Post") Post post, Model model) {
		postService.save(post);
		return "redirect:contactus";
	}

	@RequestMapping(value = "/updatePost", method = RequestMethod.PUT)
	public String doUpdatePost(@ModelAttribute("Post") Post post, Model model) {
		postService.update(post);
		model.addAttribute("listPost", postService.findAll());
		return "post-list";
	}

	@RequestMapping(value = "/postDelete/{id}", method = RequestMethod.DELETE)
	public String doDeletePost(@PathVariable int id, Model model) {
		postService.delete(id);
		model.addAttribute("listPost", postService.findAll());
		return "post-list";
	}
}
