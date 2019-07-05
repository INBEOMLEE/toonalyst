package test;

import java.util.ArrayList;
import java.util.List;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import com.toonalyst.domain.webtoon.WebtoonDTO;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class webLezhinSelenium {
	List<WebtoonDTO> RankList = new ArrayList<WebtoonDTO>();
	List<WebtoonDTO> romanceList = new ArrayList<WebtoonDTO>();
	List<WebtoonDTO> fantasyList = new ArrayList<WebtoonDTO>();
	List<WebtoonDTO> gagList = new ArrayList<WebtoonDTO>();
	List<WebtoonDTO> actionList = new ArrayList<WebtoonDTO>();
	List<WebtoonDTO> dailyList = new ArrayList<WebtoonDTO>();
	List<WebtoonDTO> alltoonList = new ArrayList<WebtoonDTO>();

	// WebDriver
	private WebDriver driver;

	private WebElement webElement;

	// Properties
	public static final String WEB_DRIVER_ID = "webdriver.chrome.driver";
	public static final String WEB_DRIVER_PATH = "c:/chromedriver.exe";

	// 크롤링 할 URL
	private String base_url;

	public webLezhinSelenium() {
		super();

		// System Property SetUp
		System.setProperty(WEB_DRIVER_ID, WEB_DRIVER_PATH);

		// Driver SetUp
		ChromeOptions options = new ChromeOptions();
		options.addArguments("headless");
		driver = new ChromeDriver(options);

		

	}

	public List<WebtoonDTO> getAllList() {

		RankList = genreList(1);
		romanceList = genreList(2);
		fantasyList = genreList(5);
		gagList = genreList(6);
		actionList = genreList(7);
		dailyList = genreList(12);
		//driver.quit();
		
		return alltoonList;
	}
	
	public List<WebtoonDTO> getRankList(){
		base_url = "https://www.lezhin.com/ko/top100";
		driver.get(base_url);
		List<WebtoonDTO> list = new ArrayList<WebtoonDTO>();
		List<WebElement> posts = driver.findElements(By.className("lzComic__link"));
		for (int i = 0; i < 10; i++) {
			WebElement webElement = posts.get(i);
			String platForm = "Lezhin";
			long titleId = Long.parseLong(webElement.getAttribute("data-object-id"));
			String titleName = webElement.getAttribute("data-ga-event-label");
			String writer = webElement.findElement(By.className("lzComic__artist")).getText();
			float rating = Float.parseFloat((String.format("%.1f", ((Math.random() * 100) % 20) / 10 + 8)));
			float innerrating = 0;
			int finish = 0;
			String bannerimg = "https://cdn.lezhin.com/v2/comics/" + titleId + "/images/wide?width=218";
			WebtoonDTO wDto = new WebtoonDTO(platForm, titleId, titleName, writer, rating, innerrating, finish,
					bannerimg);
			list.add(wDto);
		}
		
		return list;
	}
	
	public List<WebtoonDTO> genreList(int genreNum) {
		base_url = "https://www.lezhin.com/ko/top100";
		List<WebtoonDTO> list = new ArrayList<WebtoonDTO>();
		try {
			driver.get(base_url);
			driver.findElement(By.cssSelector("#top100-tab-list > button:nth-child(" + genreNum + ")")).click();
			Thread.sleep(1000);
			List<WebElement> posts = driver.findElements(By.className("lzComic__link"));
			for (WebElement webElement : posts) {
				String platForm = "Lezhin";
				long titleId = Long.parseLong(webElement.getAttribute("data-object-id"));
				String titleName = webElement.getAttribute("data-ga-event-label");
				String writer = webElement.findElement(By.className("lzComic__artist")).getText();
				float rating = Float.parseFloat((String.format("%.1f", ((Math.random() * 100) % 20) / 10 + 8)));
				float innerrating = 0;
				int finish = 0;
				String bannerimg = "https://cdn.lezhin.com/v2/comics/" + titleId + "/images/wide?width=218";
				WebtoonDTO wDto = new WebtoonDTO(platForm, titleId, titleName, writer, rating, innerrating, finish,
						bannerimg);
				System.out.println(wDto.toString());
				list.add(wDto);
				alltoonList.add(wDto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
		}
		return list;
	}
}
