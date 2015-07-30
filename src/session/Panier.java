package session;

import java.util.ArrayList;
import java.util.List;

public class Panier {

	private List<String> articles = new ArrayList<>();
	
	
	public void add(String s){
		this.articles.add(s);
	}
	
	public void remove(String s){
		this.articles.remove(s);
	}
	
	public void removeAll(){
		this.articles.clear();
	}
	
	public int count(){
		return articles.size();
	}
	
	public List<String> getArticles(){
		return this.articles;
	}
	
}
