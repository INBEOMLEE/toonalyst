package com.toonalyst.service.email;

import com.toonalyst.domain.email.EmailDTO;

public interface EmailService {
	public void sendMail(EmailDTO eDto);

}
