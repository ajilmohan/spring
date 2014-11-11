package com.bbh.stkln.restriction.dto;

import java.io.Serializable;

public class SearchForm implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
	private Integer pageNum;
	
	


	public Integer getPageNum() {
		return pageNum;
	}


	public void setPageNum(Integer pageNum) {
		this.pageNum = pageNum;
	}
}
