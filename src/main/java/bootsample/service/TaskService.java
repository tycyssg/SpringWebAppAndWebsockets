package bootsample.service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import bootsample.model.InfoToUpdateTheFile;


@Service
public class TaskService{


	@Value("${file.location}")
	private String fileLocation;
	
	@Autowired
	private FileService fileService;
	

	private static ArrayList<InfoToUpdateTheFile> infoList = new ArrayList<>();
	

    public ArrayList<String> findInfo(String fileName) throws ClassNotFoundException, IOException{
    	ArrayList<String> fileInfo = new ArrayList<>();
    	
    	for(String info : fileService.extractTheProducts(fileName)){
    		fileInfo.add(info);
    	}
    	
    	return fileInfo;
    }
    
    
    
    public void writeInfo(String before,String after,String file,long time) throws IOException {
    	InfoToUpdateTheFile inf = new InfoToUpdateTheFile(after, before, file, time);
    	if(after == null) {
    		inf.setAfter("");
    	}
    	
    	infoList.add(inf);
    	
    	System.out.println("before "+before);
    	System.out.println("after "+after);
    	System.out.println();
    	System.out.println("The object created"+inf.toString());
    	System.out.println("The List size" + infoList.size());
    	
    	File f = new File(fileLocation+file);

    	if(new Date().getTime() - f.lastModified() >= 5000) {
    		Collections.sort(infoList);
    		System.out.println("A intrat in if cu time.");
    		
    		for(InfoToUpdateTheFile info : infoList) {
    			fileService.writeTheFile(info.getBefore(),info.getAfter(),info.getFile(),fileService.extractTheProducts(info.getFile()));
    		}
    		infoList.clear();
    	}
    }
    
    
	public List<String> getFilesName() {
		List<String> files = new ArrayList<>();
		
		final File folder = new File(fileService.getFileLocation());
		
		for(String file : fileService.listFilesForFolder(folder)) {
			files.add(file);
		}
		
		return files;
	}

	
}

