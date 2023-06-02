package stream;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

//최종연산
//collect()

public class StreamEx4 {

	public static void main(String[] args) {
		
		List<Student> stuList = new ArrayList<Student>();
		stuList.add(new Student("홍길동", 99));
		stuList.add(new Student("고길동", 89));
		stuList.add(new Student("김길동", 79));
		stuList.add(new Student("박길동", 69));
		stuList.add(new Student("김지원", 75));

		//새로운 리스트에 학생들의 점수를 저장하고 출력
		List<Integer> jumsuList = stuList.stream().map(s -> s.getJumsu()).collect(Collectors.toList());
		System.out.println(jumsuList);
		
		//새로운 리스트에 과일명 대문자로 수집
		List<String> fruits = Arrays.asList("melon","apple","banana","grape");
		//									 .map(String::toUpperCase())
		List<String> uppers = fruits.stream().map(s -> s.toUpperCase()).collect(Collectors.toList());
		System.out.println(uppers);
	
	}

}
