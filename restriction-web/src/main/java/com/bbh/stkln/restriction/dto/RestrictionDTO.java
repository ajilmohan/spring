package com.bbh.stkln.restriction.dto;

import java.io.Serializable;

public class RestrictionDTO implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	

	private String restrictionId;
	
	private String restrictionType;
	private String fundMajor;
	private String fundIndicator;
	private String userSecurity;
	public String getRestrictionId() {
		return restrictionId;
	}
	public void setRestrictionId(String restrictionId) {
		this.restrictionId = restrictionId;
	}
	public String getRestrictionType() {
		return restrictionType;
	}
	public void setRestrictionType(String restrictionType) {
		this.restrictionType = restrictionType;
	}
	public String getFundMajor() {
		return fundMajor;
	}
	public void setFundMajor(String fundMajor) {
		this.fundMajor = fundMajor;
	}
	public String getFundIndicator() {
		return fundIndicator;
	}
	public void setFundIndicator(String fundIndicator) {
		this.fundIndicator = fundIndicator;
	}
	public String getUserSecurity() {
		return userSecurity;
	}
	public void setUserSecurity(String userSecurity) {
		this.userSecurity = userSecurity;
	}
	
	
	

}
