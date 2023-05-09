package com.spring.dependency;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

@Component("tv") //SansungTV 객체 생성
public class SamsungTV implements TV {
	
	@Autowired // 주입(스프링 컨테이너가 관리하는 빈 중에서 하나가 주입됨)
	@Qualifier("apple")
	private Speaker speaker; //has-a(포함) 관계
	
	//매개변수를 받지 않는 생성자 : default 생성자
	public SamsungTV() {
		System.out.println("SamsungTV 인스턴스 생성 - default 생성자");
	}
	
	
	public SamsungTV(Speaker speaker) {
		super();
		this.speaker = speaker;//멤버 변수 초기화
		System.out.println("SamsungTV 인스턴스 생성 - 인자 생성자");
	}
	
	public void setSpeaker(SonySpeaker speaker) {
		this.speaker = speaker;
	}


	@Override
	public void powerOn() {
		System.out.println("SamaungTV - 파워 On");
	}
	@Override
	public void powerOff() {
		System.out.println("SamaungTV - 파워 Off");
	}
	@Override
	public void volumeUp() {
		//System.out.println("SamaungTV - 볼륨 Up");
		speaker.volumeUp();
	}
	@Override
	public void volumeDown() {
		//System.out.println("SamaungTV - 볼륨 Down");
		speaker.volumeDown();
	}
}
