package com.jwss.system.param.user;

import com.jwss.system.vo.UserVO;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.sagacity.sqltoy.model.Page;

import java.io.Serializable;

/**
 * @author jwss
 * @project sss-rbac-admin
 * @version 1.0.0
 * @description sys_menu,系统菜单表  
 */
@ApiModel("用户分页参数")
public class UserPageParam extends Page<UserVO> implements Serializable{

	private static final long serialVersionUID = 5565588370362046172L;

	@ApiModelProperty(value = "用户属性")
	private UserVO userVO;

	public UserVO getUserVO() {
		return userVO;
	}

	public void setUserVO(UserVO userVO) {
		this.userVO = userVO;
	}
}
