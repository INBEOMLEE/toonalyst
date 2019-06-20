package com.toonalyst.service.exp;

import javax.servlet.http.HttpSession;

public interface ExpService {
	public void expUpdate(String id, int code, String reason, String ref);
	public void expUpdate(String id, int code, String reason, String ref, HttpSession session);
}
