package com.spring.dependency;

public class TvMain {
	String str = "String"; // == new 와 같은 역활

	public static void main(String[] args) {
		
		//생성자를 사용한 멤버 변수 초기화
//		SonySpeaker speaker = new SonySpeaker();		
//		TV tv = new SamaungTV(speaker);
		
//		TV tv = new SamaungTV(new SonySpeaker()); //위에 두줄을 한줄로 줄인거
		
		// setter 를 사용한 멤버 변수 초기화
		SamsungTV tv = new SamsungTV();		
		tv.setSpeaker(new SonySpeaker());		
		
		tv.powerOn();
		tv.volumeUp();
		tv.volumeDown();
		tv.powerOff();
		
//		TvMain obj = new TvMain();
//		obj.test();
	}
	
//	public void test() {
//		System.out.println(str);
//		System.out.println(str.length());
//		
//	}
}
