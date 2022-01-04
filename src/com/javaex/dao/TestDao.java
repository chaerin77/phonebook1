package com.javaex.dao;

import java.util.List;

import com.javaex.vo.PersonVo; //내껄로 했을때 여기 import안해서 연결 안됐었나봄

public class TestDao {

	public static void main(String[] args) {

		PhoneDao phoneDao = new PhoneDao();
		List<PersonVo> personList = phoneDao.getPersonList();
		
		System.out.println(personList.toString());
	}

}
