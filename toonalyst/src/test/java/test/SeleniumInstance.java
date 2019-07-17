package test;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;

public class SeleniumInstance {
	private static final String WEB_DRIVER_ID = "webdriver.chrome.driver";
	private static final String WEB_DRIVER_PATH = "c:/chromedriver.exe";
	private static WebDriver driver;
	
	private SeleniumInstance() {}
	public static WebDriver getInstance() {
		if(driver == null) {
			System.setProperty(WEB_DRIVER_ID, WEB_DRIVER_PATH);
			ChromeOptions options = new ChromeOptions();
//			options.addArguments("headless");
			driver = new ChromeDriver(options);
		}
		return driver;
	}
	public static void removeInstance() {
		if(driver != null)
			driver.quit();
	}
}
