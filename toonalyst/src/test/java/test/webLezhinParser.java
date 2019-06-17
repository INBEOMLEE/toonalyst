package test;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.flash;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.toonalyst.domain.webtoon.WebtoonDTO;

public class webLezhinParser {
	static List<WebtoonDTO> allTop100List = new ArrayList<WebtoonDTO>();
	 private static String readAll(Reader rd) throws IOException {
	    StringBuilder sb = new StringBuilder();
	    int cp;
	    while ((cp = rd.read()) != -1) {
	      sb.append((char) cp);
	    }
	    return sb.toString();
	  }

	  public static JsonElement readJsonFromUrl(String url) throws IOException {
		  URL urlclass = new URL(url);
		  InputStream is = urlclass.openStream();
	    
	    JsonElement jelement = null;
	    try {
	      BufferedReader rd = new BufferedReader(new InputStreamReader(is, Charset.forName("UTF-8")));
	      String jsonText = readAll(rd);
	      JsonObject json = new JsonObject();
	      JsonParser parser = new JsonParser();
	      jelement = parser.parse(jsonText);
		return jelement;
	    } finally {
	      is.close();
	    }
	  }

	  public webLezhinParser() {
		  
	  }
	  
	  public static void main(String[] args) throws IOException {
		JsonElement json = readJsonFromUrl("https://www.lezhin.com/api/v2/comics?offset=0&country_code=kr&adult_kind=kid&filter=all&limit=110&store=web&_=1560756205879");
	   // System.out.println(json.toString());
		getAllTop100();
	  }
	  
	  public static List<WebtoonDTO> getAllTop100(){
		try {
			JsonElement json = readJsonFromUrl("https://www.lezhin.com/api/v2/comics?offset=0&country_code=kr&adult_kind=kid&filter=all&limit=110&store=web&_=1560756205879");
			for (int i = 0; i < json.getAsJsonObject().get("data").getAsJsonArray().size(); i++) {
				String titleIdstr = json.getAsJsonObject().get("data").getAsJsonArray().get(i).getAsJsonObject().get("id").getAsString();
				long titleId = Long.parseLong(titleIdstr);
				String titleName = json.getAsJsonObject().get("data").getAsJsonArray().get(i).getAsJsonObject().get("title").getAsString();
				String writer = "";
				for (int j = 0; j < json.getAsJsonObject().get("data").getAsJsonArray().get(i).getAsJsonObject().get("artists").getAsJsonArray().size(); j++) {
					writer = writer + json.getAsJsonObject().get("data").getAsJsonArray().get(i).getAsJsonObject().get("artists").getAsJsonArray().get(j).getAsJsonObject().get("name").getAsString()+" ";
				}
				String updated = json.getAsJsonObject().get("data").getAsJsonArray().get(i).getAsJsonObject().get("updatedAt").getAsString();
				String bannerimg = "https://cdn.lezhin.com/v2/comics/"+titleId+"/images/wide?updated="+updated+"&width=277";
				String platForm = "lezhin";
				float rating = 0;
				float innerrating = 0;
				int finish = 0;
//				WebtoonDTO wDto = new WebtoonDTO(platForm, titleId, titleName, writer, rating, innerrating, finish, bannerimg);
//				System.out.println(wDto.toString());
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		   
		  return allTop100List;
	  }
}
