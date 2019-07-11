package test;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.toonalyst.domain.webtoon.WebtoonDTO;

public class webKakaoParser {
	
	List<WebtoonDTO> alltoonList;
	
	public webKakaoParser() {
		alltoonList = new ArrayList<WebtoonDTO>();
	}
	
	public List<WebtoonDTO> getAlltoonList(){
		try {
			ObjectMapper obm = new ObjectMapper();
			Map<String, Object> map = obm.readValue(new URL("https://api2-page.kakao.com/api/v7/store/section_container/list?agent=web&category=10&subcategory=1000&day=0"), new TypeReference<Map<String, Object>>() {});
			ArrayList<HashMap<String, String>> list = (ArrayList<HashMap<String, String>>) map.get("section_containers");
			HashMap<String, String> object = list.get(0);
			Object obj = object.get("section_series");
			list = (ArrayList<HashMap<String, String>>) obj;
			obj = list.get(0).get("list");
			list = (ArrayList<HashMap<String, String>>) obj;
			for (HashMap<String, String> hashMap : list) {
				String platForm = "kakao";
				long titleId = Integer.parseInt(String.valueOf(hashMap.get("uid")));
				String titleName = hashMap.get("title");
				String writer = hashMap.get("author");
				float rating = Float.parseFloat((String.format("%.1f", ((Math.random() * 100) % 20) / 10 + 8)));
				float innerrating = 0;
				int finish = 0;
				String bannerimg = "http://dn-img-page.kakao.com/download/resource?kid="+hashMap.get("image");
				alltoonList.add(new WebtoonDTO(platForm, titleId, titleName, writer, rating, innerrating, finish, bannerimg));
			}
		}catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return alltoonList;
	}
	
	public List<Integer> getRankList(){
		List<HashMap<String, Integer>> hashlist = new ArrayList<HashMap<String, Integer>>();
		List<Integer> idList = new ArrayList<Integer>();
		try {
			ObjectMapper obm = new ObjectMapper();
			Map<String, Object> map = obm.readValue(new URL("https://api2-page.kakao.com/api/v7/store/section_container/list?agent=web&category=10&subcategory=1000&day=0"), new TypeReference<Map<String, Object>>() {});
			ArrayList<HashMap<String, String>> list = (ArrayList<HashMap<String, String>>) map.get("section_containers");
			HashMap<String, String> object = list.get(0);
			Object obj = object.get("section_series");
			list = (ArrayList<HashMap<String, String>>) obj;
			obj = list.get(0).get("list");
			list = (ArrayList<HashMap<String, String>>) obj;
			for (HashMap<String, String> hashMap : list) {
				int titleId = Integer.parseInt(String.valueOf(hashMap.get("uid")));
				int count = Integer.parseInt(String.valueOf(hashMap.get("read_count")));
				HashMap<String, Integer> hash = new HashMap<String, Integer>();
				hash.put("titleid", titleId);
				hash.put("count", count);
				hashlist.add(hash);
			}
			
			Collections.sort(hashlist, new Comparator<HashMap<String, Integer>>() {
				@Override
				public int compare(HashMap<String, Integer> o1, HashMap<String, Integer> o2) {
					// TODO Auto-generated method stub
					return o2.get("count").compareTo(o1.get("count"));
				}
			});
			for (int i = 0; i < 10; i++) {
				idList.add(hashlist.get(i).get("titleid"));
			}
		}catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return idList;
	}
}
