<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<title>社員情报検索結果一覧</title>
<meta http-equiv="Content-Type" content="content=text/html;charset=UTF-8">
<link href="css/css.css" rel="stylesheet">
<style type="text/css">
<!--
.style4	{
	font-size: 12px;
	color: #FFFFFF;
}
-->
</style>
</head>
<body > 
<SCRIPT language=javascript src="js/common.js"></SCRIPT> 
<div align="center" id="screen" class="div_screen"> 
<table border="0" width="100%" cellspacing="0" cellpadding="0"> 
    <TR> 
        <TD> <table border="0" width="100%" cellspacing="0" cellpadding="0" class="table_border"> 
                <tr> 
                    <td> <table border="0" width="100%" height="60" bgcolor="#003366"> 
                            <tr> 
                                <td width="11" rowspan="2">　</td> 
                                <td width="65"><img src="img/hp_logo.gif" width="47" height="28"> <br><span class="style4">JDDC</span> </td> 
                                <td rowspan="2"> <table height="52" width="100%" border="0"> 
                                        <tr> 
                                            <td	colspan="2"	height="10">
                                            <p align="right" class="titleLeft" > <font face="Cooper	Black">JDDC	Internal Management	System</font></p></td>  
                                        </tr> 
                                        <tr> 
                                          <td	width=40%>&nbsp;</td> 
                                            <td> <p class="titleCenter"> <font face="Times New Roman"> <b>员工情报检索结果一览</b></font></p></td> 
                                        </tr> 
                                    </table></td> 
                            </tr> 
                        </table> 
                            <table border="0" cellspacing="0" cellpadding="0" width="100%" height="24" bgcolor="#FFFFFF"> 
                                <tr bgcolor="#85B7FA"> 
                                    <td>&nbsp;</td> 
                                    <td width="150" class="txt_normal">操作者：${user.eid }</td> 
                                    <td width="60" class="txt_normal"><div align="right"><a href="Login.htm">Logout</a></div></td> 
                                </tr> 
                            </table> 
                            <HR> 
                            <table border="0" cellspacing="0" cellpadding="0" width="100%"> 
                                <tr> 
									<td valign="top" > <div align="center" class="div_naviarea" id="navi" > 
                                        <!-- navigator area start here --> 
                                        <table border="0" cellspacing="0" cellpadding="0"> 
                                        	<tr> 
                                                <td width="2" rowspan="12" bgcolor="#808080" >&nbsp;</td> 
                                                <td width="205" >
                                                	<table 	border="0" cellspacing="0" cellpadding="0" width="100%" > 
                                                		                 		 <tr> 
                                                			<td width="205" height="30"><span class="menuBranch">&#8226;员工信息管理</span></td> 
			                                            </tr> 
			                                            <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="empRegister" target="_self">员工信息登录</a></span></td> 
			                                            </tr> 
			                                            <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="${pageContext.request.contextPath }/employeQuery" target="_self">员工信息检索</a></span></td> 
			                                            </tr> 
			                                             <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="confirmInfoQuery.htm" target="_self">员工信息审批</a></span></td> 
			                                            </tr> 
			                                            <tr> 
			                                                <td height="30"><span class="menuBranch">&#8226;员工期权管理</span></td> 
			                                            </tr> 
			                                            <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="TUPPurchase.htm" target="_self">员工期权申请</a></span></td> 
			                                            </tr> 
			                                            <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="TUPQuery.htm" target="_self">员工期权一览</a></span></td> 
			                                            </tr>  
			                                            <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="TUPConfirm.htm" target="_self">员工期权审批</a></span></td> 
			                                            </tr>  			                                           
                                                             <td height="30"><span class="menuBranch">&#8226;プロジェクト管理</span></td> 
			                                            </tr> 
			                                            <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="${pageContext.request.contextPath }/employeeProjectFunnelList" target="_self">プロジェクト情報登録</a></span></td> 
			                                            </tr> 
			                                            <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="${pageContext.request.contextPath }/ProjectQuery" target="_self">プロジェクト情報照会</a></span></td> 
			                                            </tr>  
			                                            <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="TUPConfirm.htm" target="_self">プロジェクト情報承認</a></span></td> 
			                                            </tr>  														

			                                                <td height="30"><span class="menuItem">　　<a href="TUPConfirm.htm" target="_self">プロジェクト情報更新</a></span></td> 
			                                            </tr> 
														<tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="TUPConfirm.htm" target="_self">PD/PMアセイン情報更新</a></span></td> 
			                                            </tr> 
			                                            <tr> 
			                                                <td height="30"><span class="menuBranch">&#8226;稼動管理</span></td> 
			                                            </tr> 
			                                            <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="${pageContext.request.contextPath}/ResourceConfirmInfoQuery" target="_self">リソース情報承認</a></span></td> 
			                                            </tr> 	
			                                            <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="${pageContext.request.contextPath}/assignResourceQuery" target="_self">リソース情報検索</a></span></td> 
			                                            </tr> 
			                                            <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="${pageContext.request.contextPath}/assignResourceUsedQuery" target="_self">リソース稼働情報検索</a></span></td> 
			                                            </tr> 		                                           
			                                             <tr> 
			                                                <td height="30"><span class="menuBranch">&#8226;システム管理</span></td> 
			                                            </tr> 
						                                      <tr> 
						                                          <td height="30"><span class="menuItem">　　<a href="employeRoleAssign1.htm" target="_self">社員ロールアサイン</a></span></td> 
						                                      </tr> 
						                                      <tr> 
						                                          <td height="30"><span class="menuItem">　　<a href="roleResourceList.htm" target="_self">ロール機能権限アサイン</a></span></td> 
						                                      </tr> 
						                                      <tr> 
						                                          <td height="30"><span class="menuItem">　　<a href="passwordChange.htm" target="_self">パースワード変更</a></span></td> 
						                                      </tr>
						                                      <tr> 
						                                          <td height="30"><span class="menuItem">　　<a href="#" target="_self">マスタメンテナンス</a></span></td> 
						                                      </tr>
																									<tr> 
			                                                <td>&nbsp;</td> 
			                                            </tr>
                                                	</table>	
                                                </td> 
                                                <td width="1" rowspan="12" bgcolor="#808080"></td> 
                                            </tr> 
                                            
                                            
                                        </table> 
                                        <!-- navigator area end here --> 
                                    </div></td> 
                                    <td width="750" align="center" valign="top"> 

					<table width="100%"  cellspacing="1"> 
						<tr> 
							<td class="tdFuncTitle">プロジェクト登録情報</td> 
						</tr> 
					</table> 
					
					<style>

                      div{

                      text-align: center;

                      width: 300px;

                      height: 100px;

                      background: #3EFD9B;

                      }

                     h{

                     display: inline-block;

                     background: #2db5bc;

                     }

                     </style>

						<form action="${pageContext.request.contextPath }/" method="post" name="searchForm" target="_self">
                      <table width="100%" border="0" cellpadding="1" cellspacing="1" align="value"> 					  
					    <tr><td colspan="4"><span class="txt_normal"><b><li >プロジェクト情報</li></b></span></td></tr>
                      
                        <tr > 
                          <td width="25%" class="tdLabel"><span class="txt_normal">DDC番号</span></td> 
                          <td width="25%"><input type="hidden" name="eid" size="20" maxlength="8" class="string" value="${eid}"></td> 
                          
                        </tr> 
                       
                        <tr> 
                        
                          <td width="25%" class="tdLabel"><span class="txt_normal">PD担当者名</span></td> 
						  <td width="25%">
						  <div class="string_must_input" style="height: 70px; width:130px; overflow-y:scroll">
                          <div style="border: 1px  #000000; width: 90%; margin: 0 auto;">
                          <ul>
                          <h1 >1</h1>
                          <h1 >2</h1>

                         </ul>
                         
                         </div>
                         
                         </div>
                         	<span class="mustInputStar">*</span>				
						　</td>
                          <td width="25%" class="tdLabel"><span class="txt_normal">プロジェクトマネージャ名</span></td> 
						  <td width="25%">
							<div class="string_must_input" size="20" style="height: 70px; width:130px; overflow-y:scroll">
                          <div style="border:  1px  #000000;  width: 50%; margin: 0 auto;" >
                          <ul>
                          <h1 >1</h1>
                          <h1 >2</h1>

                         </ul>
                         </div>
                         </div>	
                         <span class="mustInputStar">*</span>			
						　</td>
                        </tr>
                        <tr>
                          <td width="25%" class="tdLabel"><span class="txt_normal">プロジェクト作業サイト</span></td> 
						  <td width="25%">
								<select style="width:130px;" name="T2" class="string_must_input">
								   <option value=""></option>
									<c:forEach items="${types}" var="t">
									     <option value="${t.code}" >${t.name}</option>
									</c:forEach> 
								</select>
								<span class="mustInputStar">*</span>
						  </td>
						　</td>
                          <td width="25%" class="tdLabel"><span class="txt_normal">プロジェクトタイプ<span></td> 
						  <td width="25%">
								<select size="1" name="T2" class="string_selectbox_1">
								   <option value=""></option>
									<c:forEach items="${types}" var="t">
									     <option value="${t.code}" >${t.name}</option>
									</c:forEach> 
								</select>
								
						　</td>
                        </tr>
                        <tr> 
                          <tr> 
			                          <td width="134" class="tdLabel"><span class="txt_normal">開始日付</span></td> 
			                          <td><input id="birthday" type="text" name="birthday" size="10" value="${emp.birthday }"><input type="image" src="img/calendar.gif" onclick="return showCalendar('birthday', 'y/mm/dd');"
                                      onkeydown="javascript:return skip2component(this);"/>
									  						
									  						
			                          <td width="134" class="tdLabel"><span class="txt_normal">完了日付</span></td> 
			                          <td><input id="birthday" type="text" name="birthday" size="10" value="${emp.birthday }"><input type="image" src="img/calendar.gif" onclick="return showCalendar('birthday', 'y/mm/dd');"
                                      onkeydown="javascript:return skip2component(this);"/>
									  						</td> 
                        </tr> 
                        <tr>
                          <td width="25%" class="tdLabel"><span class="txt_normal">CS/BS区分</span></td> 
						  <td width="25%">
								<select style="width:130px;" name="T2" class="string_selectbox_1">
								   <option value=""></option>
									<c:forEach items="${types}" var="t">
									     <option value="${t.code}" >${t.name}</option>
									</c:forEach> 
								</select>
								
						  </td>
						　</td>
						  </tr> 
                          <td width="25%" class="tdLabel"><span class="txt_normal">開始フェース<span></td> 
						  <td width="25%">
								<select size="1" name="T2" class="string_selectbox_1">
								   <option value=""></option>
									<c:forEach items="${types}" var="t">
									     <option value="${t.code}" >${t.name}</option>
									</c:forEach> 
								</select>
								
						　</td>
						  <td width="25%" class="tdLabel"><span class="txt_normal">終了フェース<span></td> 
						  <td width="25%">
								<select size="1" name="T2" class="string_selectbox_1">
								   <option value=""></option>
									<c:forEach items="${types}" var="t">
									     <option value="${t.code}" >${t.name}</option>
									</c:forEach> 
								</select>
								
						　</td>
                          </tr>
                          <td width="25%" class="tdLabel"><span class="txt_normal">Activeフェース<span></td> 
						  <td width="25%">
								<select size="1" name="T2" class="string_selectbox_1">
								   <option value=""></option>
									<c:forEach items="${types}" var="t">
									     <option value="${t.code}" >${t.name}</option>
									</c:forEach> 
								</select>
								
						　</td>
                          </tr>
                        		  <td width="25%" class="tdLabel"><span class="txt_normal">プロジェクトステータス<span></td> 
						  <td width="25%">
								<select size="1" name="T2" class="string_selectbox_1">
								   <option value=""></option>
									<c:forEach items="${types}" var="t">
									     <option value="${t.code}" >${t.name}</option>
									</c:forEach> 
								</select>
								
						　</td>
                          </tr>
                         <tr > 
                          <td width="25%" class="tdLabel"><span class="txt_normal">DBサーバOS</span></td> 
                          <td width="25%"><input type="text" name="eid" size="20" maxlength="8" class="string" value="${eid}"></td> 
                          <td width="25%" class="tdLabel"><span class=h"txt_normal">DBサーバ</span></td> 
                          <td width="25%"><input type="text" name="name" size="20" class="string" value="${namejpn}"></td> 
                        </tr> 
                           <tr > 
                          <td width="25%" class="tdLabel"><span class="txt_normal">APサーバOS</span></td> 
                          <td width="25%"><input type="text" name="eid" size="20" maxlength="8" class="string" value="${eid}"></td> 
                          <td width="25%" class="tdLabel"><span class=h"txt_normal">APサーバ</span></td> 
                          <td width="25%"><input type="text" name="name" size="20" class="string" value="${namejpn}"></td> 
                        </tr>                     
						<tr > 
                          <td width="25%" class="tdLabel"><span class="txt_normal">クライアントOS</span></td> 
                          <td width="25%"><input type="text" name="eid" size="20" maxlength="8" class="string" value="${eid}"></td> 
                          <td width="25%" class="tdLabel"><span class=h"txt_normal">開発言語</span></td> 
                          <td width="25%"><input type="text" name="name" size="20" class="string" value="${namejpn}"></td> 
                        </tr> 
                        <td width="25%" class="tdLabel"><span class=h"txt_normal">GDCCプロジェクトEID</span></td> 
                          <td width="25%"><input type="text" name="name" size="20" class="string" value="${namejpn}"></td> 
                          <td width="25%" class="tdLabel"><span class="txt_normal">契約形態区分<span></td> 
						  <td width="25%">
								<select size="1" name="T2" class="string_selectbox_1">
								   <option value=""></option>
									<c:forEach items="${types}" var="t">
									     <option value="${t.code}" >${t.name}</option>
									</c:forEach> 
								</select>
								
						　</td>
                          </tr>
                         <tr>
						  <td width="100%" align="center" colspan="4"><br/></td>
                        </tr> 		
                        <tr>
						  <td width="100%" align="center" colspan="4">
						  <div style="pisition: fixed">
						  <input type="submit" value="  　実行  　" name="B1" class="string">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						  <input type="reset" value="　  戻る 　" name="B22" class="string"></td>
                          </div>
                        </tr> 						 
                      </table>
					  </form>	

				

                   
					  <!-- Work area end here --> 
					  </div></td></tr>

					 
				    </table>
								 </td> 
                                </tr> 
                            </table></td> 
                    </tr> 
                    <!-- Footer area start here --> 
                    <tr> 
                        <td height="1"></td> 
                    </tr> 
                    <tr> 
                        <td height="20" bgcolor="#003366"></td> 
                    <tr> 
                        <td><div align="center" class="string"> © Copyright 2007 Hewlett-Packard TSG-JDDC </div></td> 
                    </tr> 
                    <!-- Footer area end here --> 
                </table></TD> 
        </TR> 
    </table> 
</div> 
</body>
</html>

