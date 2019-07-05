package test;

import java.util.ArrayList;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;

import com.toonalyst.domain.webtoon.WebtoonDTO;

public class webLezhinSelenium {
	List<WebtoonDTO> allList = new ArrayList<WebtoonDTO>();
	 public static void main(String[] args) {
		 
	        webLezhinSelenium selTest = new webLezhinSelenium();
	        selTest.crawl();
	        
	    }
	 
	    
    //WebDriver
    private WebDriver driver;
    
    private WebElement webElement;
    
    //Properties
    public static final String WEB_DRIVER_ID = "webdriver.chrome.driver";
    public static final String WEB_DRIVER_PATH = "src/main/webapp/resources/chromedriver/chromedriver.exe";
    
    //크롤링 할 URL
    private String base_url;
    
    public webLezhinSelenium() {
        super();
 
        //System Property SetUp
        System.setProperty(WEB_DRIVER_ID, WEB_DRIVER_PATH);
        
                
        //Driver SetUp
         ChromeOptions options = new ChromeOptions();
         driver = new ChromeDriver(options);
        
        base_url = "https://www.lezhin.com/ko/top100";
        
        
        
    }
 
    public void crawl() {
 
        try {
        	driver.get(base_url);
        	for (int i = 1; i < 5; i++) {
        		driver.findElement(By.cssSelector("#top100-tab-list > button:nth-child("+i+")")).click();
        		Thread.sleep(1000);
        		List<WebElement> posts  = driver.findElements(By.className("lzComic__link"));
            	for (WebElement webElement : posts) {
            		String platForm = "Lezhin";
            		long titleId = Long.parseLong(webElement.getAttribute("data-object-id"));
            		String titleName = webElement.getAttribute("data-ga-event-label");
            		String writer = webElement.findElement(By.className("lzComic__artist")).getText();
            		String bannerimg = "https://cdn.lezhin.com/v2/comics/"+titleId+"/images/wide?width=277";
            		System.out.println(platForm);
    				System.out.println(titleId);
    				System.out.println(titleName);
    				System.out.println(writer);
    				System.out.println(bannerimg);
    			}
			}
        	
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            driver.close();
        }
 
    }
}
