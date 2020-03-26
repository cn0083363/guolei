package com.ssm.employee.pojo;

public class Department {
	private String id;
	private String name;
	private String managerEid;
	private String type;
	private String parentDepartMentId;
	private String deleteFlag;
	private String insUserId;
	private String insTimestamp;
	private String updUserId;
	private String updTimestamp;
	
	public Department() {}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getManagerEid() {
		return managerEid;
	}

	public void setManagerEid(String managerEid) {
		this.managerEid = managerEid;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getParentDepartMentId() {
		return parentDepartMentId;
	}

	public void setParentDepartMentId(String parentDepartMentId) {
		this.parentDepartMentId = parentDepartMentId;
	}

	public String getDeleteFlag() {
		return deleteFlag;
	}

	public void setDeleteFlag(String deleteFlag) {
		this.deleteFlag = deleteFlag;
	}

	public String getInsUserId() {
		return insUserId;
	}

	public void setInsUserId(String insUserId) {
		this.insUserId = insUserId;
	}

	public String getInsTimestamp() {
		return insTimestamp;
	}

	public void setInsTimestamp(String insTimestamp) {
		this.insTimestamp = insTimestamp;
	}

	public String getUpdUserId() {
		return updUserId;
	}

	public void setUpdUserId(String updUserId) {
		this.updUserId = updUserId;
	}

	public String getUpdTimestamp() {
		return updTimestamp;
	}

	public void setUpdTimestamp(String updTimestamp) {
		this.updTimestamp = updTimestamp;
	}

	@Override
	public String toString() {
		return "Department [id=" + id + ", name=" + name + ", managerEid=" + managerEid + ", type=" + type
				+ ", parentDepartMentId=" + parentDepartMentId + ", deleteFlag=" + deleteFlag + ", insUserId="
				+ insUserId + ", insTimestamp=" + insTimestamp + ", updUserId=" + updUserId + ", updTimestamp="
				+ updTimestamp + "]";
	}
	
	
}
