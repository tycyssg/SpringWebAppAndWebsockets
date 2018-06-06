package socket;
import java.io.IOException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;

@ServerEndpoint(value="/server")
public class WsServer {

	static Set<Session> users = Collections.synchronizedSet(new HashSet<>());
	
	@OnOpen
	public void onOpen(Session session, @PathParam(value = "message") String message) {
		users.add(session);
	}
	

	
	@OnMessage
	public void onMessage(Session session, String message){
		 String username  = (String) session.getUserProperties().get("username");
		 String file  = (String) session.getUserProperties().get("file");
		 
	 if(username == null) {
		String[] messages = message.trim().split("\\s+");
		
		 session.getUserProperties().put("username", messages[0]);
		 session.getUserProperties().put("file", messages[1]);
		 try {
			session.getBasicRemote().sendText("System: you are now connected as "+ messages[0]+" in file "+messages[1]);
		} catch (IOException e) {
			e.printStackTrace();
		}
	 }else {
		 Iterator<Session> iterator = users.iterator();
		 while(iterator.hasNext()) {
			 Session user = iterator.next();
			
				 if(!(user.getUserProperties().get("username").equals(username)) && user.getUserProperties().get("file").equals(file)) {
					 //send text in JS
					 if(message.trim().startsWith("You")) {
						 try {
							user.getBasicRemote().sendText("CHAT: "+username+": "+ message.replace("You: ", ""));
						} catch (IOException e) {
							e.printStackTrace();
						}
					 }else {
						 try {
							user.getBasicRemote().sendText(message);
						} catch (IOException e) {
							e.printStackTrace();
						}
					 }
		 }

	}
	 }
	}
	
	@OnClose
	public void onClose(Session session) {
		try {
			users.remove(session);
			session.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
}
