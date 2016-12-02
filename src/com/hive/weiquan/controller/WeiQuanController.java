package com.hive.weiquan.controller;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.hive.agfs.model.Menu;
import com.hive.agfs.model.Weiquanxiaofeizhe;
import com.hive.common.util.DateUtil;
import com.hive.common.util.UUID;
import com.hive.common.vo.MenuVo;
import com.hive.pub.service.MenuService;
import com.jfinal.core.Controller;

public class WeiQuanController extends Controller{

	 private static Logger logger = LoggerFactory.getLogger(WeiQuanController.class);
	public void index(){
		render("/login.jsp");
	}
	
	public void addweiquan() {
		try {
			
			// 获取页面数据
			String userName = this.getPara("userName");
			String mobilePhone = this.getPara("mobilePhone");
			String money = this.getPara("money");
			String buyTime = this.getPara("buyTime");// 抄送说明
			String buyAddress = this.getPara("buyAddress");// 下一环节的处理人部门和角色
			String buyThings = this.getPara("buyThings");// 下一环节的处理人部门和角色
			String isComplain = this.getPara("isComplain");// 下一环节的处理人部门和角色
			String remark = this.getPara("remark");
			Weiquanxiaofeizhe wf = new Weiquanxiaofeizhe();
			wf.put("id",UUID.getUUIDString());
			wf.put("userName",userName);
			wf.put("mobilePhone",mobilePhone);
			wf.put("money",money);
			wf.put("buyTime",buyTime);
			wf.put("buyAddress",buyAddress);
			wf.put("buyThings",buyThings);
			wf.put("isComplain","1");
			wf.put("remark",remark);
//			wf.
//			wf.setId(UUID.getUUIDString());
//			wf.setUserName(userName);
//			wf.setMobilePhone(mobilePhone);
//			wf.setMoney(money);
//			wf.setBuyTime(DateUtil.format(buyTime, ""));
//			wf.setBuyAddress(buyAddress);
//			wf.setBuyThings(buyThings);
//			wf.setIsComplain(isComplain);
//			wf.setRemark(remark);
			System.out.println();
			wf.save();
			
			/*String ccRoleid = "";//抄送确认人角色id
        	String ccOrganid = "";//抄送确认人部门id
        	String ccRole = "";//抄送确认人角色
        	String ccOrgan = "";//抄送确认人部门
        	if(StringUtil.isNoBlank(nextJob)){
        		String nextjobArray = nextJob.split(":")[1].replace("{", "").replace("}", "");
        		ccOrganid = nextjobArray.split(",")[0];
        		ccRoleid = nextjobArray.split(",")[1];
        	}
        	if(StringUtil.isNoBlank(sendPositionName)){
        		ccOrgan = sendPositionName.split(":")[0];
        		ccRole = sendPositionName.split(":")[1];
        	}
			// 获取session中的数据
			String curr_user = getSessionAttr(BpsKey._curr_user);
			String username = this.getSessionAttr("name");
			String userid = this.getSessionAttr("userid");
			String userphone = this.getSessionAttr("phone");
			String organname = this.getSessionAttr("organname");
			String organid = this.getSessionAttr("organid");
			
			String currentRoleId = this.getSessionAttr("currentRoleId");// 当前角色id
			// 获取到工单基表数据
			BaseSheet baseSheet = BaseSheet.dao.findById(baseSheetId);
			CchSheet parentCchSheet = CchSheet.dao.findById(baseSheetId);// 获取工单特征表
			Map dataMapForCC = new HashMap();
			dataMapForCC.put("createUserId", userid);
			dataMapForCC.put("createUser", username);
			dataMapForCC.put("userPhone", userphone);
			dataMapForCC.put("orgId", organid);
			dataMapForCC.put("orgName", organname);

			String nowDatesForAccept = new SimpleDateFormat(
					"yyyy-MM-dd HH:mm:ss").format(new Date());
			dataMapForCC.put("createTime", nowDatesForAccept);

			dataMapForCC.put("createRole", rolename);
			dataMapForCC.put("createRoleId", roleId);

			dataMapForCC.put("CCREMARK", ccRemark);
			dataMapForCC.put("CCROLE", ccRole);
			dataMapForCC.put("CCROLEID", ccRoleid);
			dataMapForCC.put("CCDEPT", ccOrgan);
			dataMapForCC.put("CCDEPTID", ccOrganid);
			dataMapForCC.put("STATE", "0");
			dataMapForCC.put("pageId", "cch_confirmation");
			dataMapForCC.put("operator", operator);
			dataMapForCC.put("phone", phone);
			dataMapForCC.put("czsj", czsj);
			dataMapForCC.put("organname", organname);
			dataMapForCC.put("sendPositionName", sendPositionName);
			dataMapForCC.put("attachfile", attachfile);

			CCSheet ccSheet = new CCSheet();
			ccSheet.put("BASESHEETID", baseSheet.get(IBaseSheet._id));
			ccSheet.put("CREATEUSER", username);
			ccSheet.put("CREATEUSERID", userid);
			ccSheet.put("CREATEUSERTELEPHONE", userphone);
			ccSheet.put("CREATEDEPT", organname);
			ccSheet.put("CREATEDEPTID", organid);
			ccSheet.put("CREATEUSERROLE", rolename);
			ccSheet.put("CREATEUSERROLEID", roleId);
			ccSheet.put("CREATETIME", nowDatesForAccept);
			ccSheet.put("CCREMARK", ccRemark);
			ccSheet.put("CCROLE", ccRole);
			ccSheet.put("CCROLEID", ccRoleid);
			ccSheet.put("STATE", "0");
			ccSheet.put("ISVALID", "1");
			ccSheet.put("CCDEPT", ccOrgan);
			ccSheet.put("CCDEPTID", ccOrganid);
			boolean flag = CCSheet.dao.saveCC(ccSheet);

//			FormService.inst.saveData(
//					String.valueOf(baseSheet.get(IBaseSheet._id)),
//					"jkcch.T1.confirmation", null, "bps.jkts.P_JKCCH",
//					"P_JKCCH_T0", dataMapForCC);
			String operLogId = FormService.inst.saveData(
					String.valueOf(baseSheet.get(IBaseSheet._id)),
					"cch_T2_confirmation", null, "bps.cch.P_CCH",
					"P_CCH_T2", dataMapForCC);
			setAttr("statusCode", "200");
			setAttr("message", "抄送成功");
			setAttr("reloadFlag", "1");
			setAttr("callbackType", "closeCurrent");
			setAttr("navTabId", "sheet-listUndoType");
			
			 //处理附件
	        List<UploadFile> uploadFileList = getFiles();
	      
	        for (UploadFile uploadFile : uploadFileList) {
	            BaseSheetFile.dao.saveFile(uploadFile, baseSheetId, "抄送",username,operLogId);
	        }*/
			setAttr("status", true);
			renderJson();
		} catch (Exception e) {
			e.printStackTrace();
			setAttr("statusCode", "300");
			setAttr("message", e.getMessage());
			renderJson();
		}
	}
}
