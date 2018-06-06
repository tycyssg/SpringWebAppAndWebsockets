package bootsample.controller;

import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import bootsample.service.TaskService;

@Controller
public class MainController {

	@Autowired
	private TaskService taskService;

	
	
	@GetMapping("/")
	public String home(HttpServletRequest request,HttpSession session) throws ClassNotFoundException, IOException{
		request.setAttribute("mode", "MODE_HOME");
		return "index";
	}
		
	@GetMapping("/ws-index")
	public String wsIndex(HttpServletRequest request) throws ClassNotFoundException, IOException{
		request.setAttribute("filesNames", taskService.getFilesName());
		request.setAttribute("mode", "WS_INDEX");
		return "index";
	}
	
	@PostMapping("/send-update")
	public String updateTask(@RequestParam String after,String before,String fileName,long time,HttpServletRequest request) throws IOException{
		taskService.writeInfo(before, after,fileName,time);
		return "index";
	}
	
	@PostMapping("/start-ws")
	public String startWs(@RequestParam String name,String file,HttpServletRequest request) throws IOException, ClassNotFoundException{
		request.setAttribute("name", name);
		request.setAttribute("file", file);

		request.setAttribute("info", taskService.findInfo(file));
		request.setAttribute("mode", "MODE_OTHER");
		return "index";
	}
	
	
	}
	
