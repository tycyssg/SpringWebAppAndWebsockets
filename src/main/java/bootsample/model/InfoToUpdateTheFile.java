package bootsample.model;

public class InfoToUpdateTheFile implements Comparable<InfoToUpdateTheFile> {
	
	private String after;
	private String before;
	private String file;
	private long messageTime;
	
	public InfoToUpdateTheFile(String after, String before, String file, long messageTime) {
		this.after = after;
		this.before = before;
		this.file = file;
		this.messageTime = messageTime;
	}

	public String getAfter() {
		return after;
	}

	public void setAfter(String after) {
		this.after = after;
	}

	public String getBefore() {
		return before;
	}

	public void setBefore(String before) {
		this.before = before;
	}

	public String getFile() {
		return file;
	}

	public void setFile(String file) {
		this.file = file;
	}

	public long getMessageTime() {
		return messageTime;
	}

	public void setMessageTime(long messageTime) {
		this.messageTime = messageTime;
	}

	@Override
	public int compareTo(InfoToUpdateTheFile o) {
		return Long.valueOf(this.messageTime).compareTo(Long.valueOf(o.getMessageTime()));
	}

	@Override
	public String toString() {
		return "InfoToUpdateTheFile [after=" + after + ", before=" + before + ", file=" + file + ", messageTime="
				+ messageTime + "]";
	}



	
	
}
