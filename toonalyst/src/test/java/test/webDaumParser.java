package test;

import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.toonalyst.domain.webtoon.WebtoonDTO;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class webDaumParser {
	List<WebtoonDTO> alltoonList;

	public webDaumParser() {
		alltoonList = new ArrayList<WebtoonDTO>();
		String[] week = {"mon","tue","wed","thu","fri","sat","sun"};
		for (String day : week) {
			dayList(day);	
		}
		System.out.println(alltoonList.size());
	}
	
	private void dayList(String day) {
		try {
			ObjectMapper obm = new ObjectMapper();
			Map<String, Object> map = obm.readValue(new URL("http://webtoon.daum.net/data/pc/webtoon/list_serialized/"+day), new TypeReference<Map<String, Object>>() {});
			ArrayList<HashMap<String, String>> list = (ArrayList<HashMap<String, String>>) map.get("data");
			String str = "";
			for (HashMap<String, String> listmap : list) {
				String platForm = "daum";
				int titleId = Integer.parseInt(String.valueOf(listmap.get("id")));
				String titleName = String.valueOf(listmap.get("title"));
				String writer = writer(listmap.get("cartoon"));
				float rating = 0;
				float innerrating = 0;
				int finish = 0;
				if(listmap.get("finishYn").equals("Y")) {
					finish = 1;
				}
				Object imgobj = listmap.get("pcRecommendImage");
				HashMap<String, String> imgmap = (HashMap<String, String>)imgobj;
				String bannerimg = imgmap.get("url");
				alltoonList.add(new WebtoonDTO(platForm, titleId, titleName, writer, rating, innerrating, finish, bannerimg));
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private String writer(Object listmap) {
		HashMap<String, String> map;
		Object listobj;
		ArrayList<HashMap<String, String>> list;
		ArrayList<String> artistList = new ArrayList<String>();
		String result="";
		boolean pass = true;
		if(listmap instanceof HashMap) {
			map = (HashMap<String, String>) listmap;
			listobj = map.get("artists");
			list = (ArrayList<HashMap<String, String>>) listobj;
			for (HashMap<String, String> hashMap : list) {
				result = hashMap.get("name");
			}
		}
		return result;
	}
	
	public List<WebtoonDTO> getRankList(){
		ArrayList<WebtoonDTO> result = new ArrayList<WebtoonDTO>();
		try {
			ObjectMapper obm = new ObjectMapper();
			Map<String, Object> map = obm.readValue(new URL("http://webtoon.daum.net/data/pc/webtoon/list_daily_ranking/serialized"), new TypeReference<Map<String, Object>>() {});
			ArrayList<HashMap<String, String>> list = (ArrayList<HashMap<String, String>>) map.get("data");
			String str = "";
			for (int i = 0; i < 10; i++) {
				HashMap<String, String> listmap = list.get(i);
				String platForm = "daum";
				int titleId = Integer.parseInt(String.valueOf(listmap.get("id")));
				String titleName = String.valueOf(listmap.get("title"));
				String writer = writer(listmap.get("cartoon"));
				float rating = 0;
				float innerrating = 0;
				int finish = 0;
				if(listmap.get("finishYn").equals("Y")) {
					finish = 1;
				}
				Object imgobj = listmap.get("pcRecommendImage");
				HashMap<String, String> imgmap = (HashMap<String, String>)imgobj;
				String bannerimg = imgmap.get("url");
				result.add(new WebtoonDTO(platForm, titleId, titleName, writer, rating, innerrating, finish, bannerimg));
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
}
