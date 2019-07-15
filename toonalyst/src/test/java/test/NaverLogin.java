package test;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.openqa.selenium.By;
import org.openqa.selenium.Cookie;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import lombok.Getter;

@Getter
public class NaverLogin {
	Map<String, String> map;
	WebDriver driver;
	public NaverLogin() throws InterruptedException {
		driver = SeleniumInstance.getInstance();
		driver.get("http://localhost:8081/toonalyst/member/login");
		driver.findElement(By.id("login_id")).sendKeys("user01");
	    driver.findElement(By.id("login_pw")).sendKeys("1234");
	    driver.findElement(By.cssSelector("#login_form > button.login_btn")).click();
	    Set<Cookie> cookie = driver.manage().getCookies();
	    map = new HashMap<String, String>();
	    for (Cookie c : cookie) {
			map.put(c.getName(), c.getValue());
		}
	    for (String key : map.keySet()) {
			System.out.println(key+">>>>>>>>"+map.get(key));
		}
	}
	
	public static void main(String[] args) throws InterruptedException {
		WebDriver logindriver = new NaverLogin().getDriver();
	}
}
