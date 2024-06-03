package com.company.dto;

import java.util.Date;

import org.apache.commons.lang3.RandomStringUtils;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


@Getter
@Setter
@ToString
public class IamPortClient {
	public final static String CODE ="imp06815858";
	public final static String KEY ="3622103748554553";
	public final static String SECRET ="";

	private String randChar;

	public IamPortClient() {
		Date date = new Date();
		this.randChar =  date + RandomStringUtils.randomAlphanumeric(12);
	}
}

//salesController에 주입 @Autowired