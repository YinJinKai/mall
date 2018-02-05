package mall.system.model;

public class UserModel {
	private Integer id;
	private String createtime;
	private String updatetime;
	private String creator;
	private String updater;
	private Integer isdelete;
	private Integer iseffect;
	private String userid;
	private String username;
	private String password;
	private Integer isseller;
    private String yanz;//ÑéÖ¤Âë
    
	public String getYanz() {
		return yanz;
	}

	public void setYanz(String yanz) {
		this.yanz = yanz;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCreatetime() {
		return createtime;
	}

	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}

	public String getUpdatetime() {
		return updatetime;
	}

	public void setUpdatetime(String updatetime) {
		this.updatetime = updatetime;
	}

	public String getCreator() {
		return creator;
	}

	public void setCreator(String creator) {
		this.creator = creator;
	}

	public String getUpdater() {
		return updater;
	}

	public void setUpdater(String updater) {
		this.updater = updater;
	}

	public Integer getIsdelete() {
		return isdelete;
	}

	public void setIsdelete(Integer isdelete) {
		this.isdelete = isdelete;
	}

	public Integer getIseffect() {
		return iseffect;
	}

	public void setIseffect(Integer iseffect) {
		this.iseffect = iseffect;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getIsseller() {
		return isseller;
	}

	public void setIsseller(Integer isseller) {
		this.isseller = isseller;
	}
}
