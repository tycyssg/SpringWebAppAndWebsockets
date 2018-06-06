package bootsample.service;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

@Service
public class FileService {
	
	@Value("${file.location}")
	private String fileLocation;
	
	
	public ArrayList<String> extractTheProducts(String fileName) throws IOException{
		
		ArrayList<String> list = new ArrayList<>();
		
		try (BufferedReader br = new BufferedReader(new FileReader(fileLocation+fileName))) {

			String sCurrentLine;
			while ((sCurrentLine = br.readLine()) != null) {
				list.add(sCurrentLine.trim());
			}

		} catch (IOException e) {
			e.printStackTrace();
		}
		return list;
	}

	
	public void writeTheFile(String before,String after,String fileName,ArrayList<String> list) {
		
		BufferedWriter bw = null;
		FileWriter fw = null;
		
		try {

			fw = new FileWriter(fileLocation+fileName);
			bw = new BufferedWriter(fw);
			
			for(int i = 0 ; i < list.size();i++) {
				if(before.trim().equalsIgnoreCase(list.get(i))) {
					list.set(i, after.trim());
				}
				
				bw.write(list.get(i));
				bw.newLine();
			}

		} catch (IOException e) {

			e.printStackTrace();

		} finally {

			try {

				if (bw != null)
					bw.close();

				if (fw != null)
					fw.close();

			} catch (IOException ex) {

				ex.printStackTrace();

			}
		}
	}
	
	
	public void createFile() throws IOException {		
		File f = new File(fileLocation+"language.txt");
		if(!f.exists()){
		  f.createNewFile();
		}else{
		  System.out.println("File already exists");
		}
	}
	
	
	
	public String getFileLocation() {
		return fileLocation;
	}



	public  List<String> listFilesForFolder(final File folder) {
		List<String> files = new ArrayList<>();
	    for (final File fileEntry : folder.listFiles()) {
	        if (fileEntry.isDirectory()) {
	            listFilesForFolder(fileEntry);
	        } else {
	          files.add(fileEntry.getName());
	        }
	    }
	    return files;
	}
}
