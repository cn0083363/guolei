<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<html>
  <head>
    <title>JDDC Internal Management System</title>
    <meta http-equiv="Content-Type" content="content=text/html;charset=UTF-8">
    <link href="css/css.css" rel="stylesheet">
    <style type="text/css">
     #div1{
				
				width: 744;
				height: 300;
				position: relative;
			}
			
			#btn{
				position: absolute;
				right: 5px;
				bottom: 5px;
			}
    </style>
  </head>
  <body >
<SCRIPT language="javascript" src="js/common.js"></SCRIPT>
<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
    <div align="left" id="screen" class="div_screen">
      <table border="0" width="100%" cellspacing="0" cellpadding="0">
        <TR>
          <TD>
            <table border="0" width="100%" cellspacing="0" cellpadding="0" class="table_border">
              <tr>
                <td>
                  <table border="0" width="100%" height="50" bgcolor="#003366">
                    <tr>
                      <td width=2% rowspan="1">
                        　</td>
                      <td>
                        <img src="img/hp_logo.gif" width="47" height="28">
                        <br>
                        <span align="left"  class="style4" size="3"> JDDC
                        </span></td>
                      <td rowspan="2">
                        <table height="6" width="100%" border="0">
                          <tr>
                            <td	colspan="1"	height="20">
                              <p align="right" class="titleLeft" >
                                <font face="Cooper	Black" size="3"> JDDC	Internal Management	System    
                                </font>
                              </p></td>
                              <td	width=10%>
                        &nbsp;</td>
                    </tr>
                    <tr>
                      
                <td >
                  <p align="left" class="titleCenter"  >
                    <font face="Times New Roman" size="5">
                      <b>FUNNEL情報一覧（プロジェクト登録）</b>
                    </font>
                  </p></td>
              </tr>
            </table></td>
        </tr>
      </table>
      <table border="0" cellspacing="0" cellpadding="0" width="100%" height="24" bgcolor="#FFFFFF">
        <tr bgcolor="#85B7FA">
          <td width=73%>
            &nbsp;</td>
          <td width="100" class="txt_normal" >
            操作者：${user.eid }</td>
          <td width="110" class="txt_normal">
            <div align="left">
              <a href="Login.htm">ログアウト           </a>
            </div></td>
        </tr>
      </table>
      <HR>
      <table border="0" cellspacing="0" cellpadding="0" width="100%">
        <tr>
          <td valign="top">
            <div align="center" class="div_naviarea" id="navi" >
              <!-- navigator area start here -->
              <table border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="2" rowspan="12" bgcolor="#808080" >
                    &nbsp;</td>
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
			                                                <td height="30"><span class="menuItem">　　<a href="TUPQuery.htm" target="_self">プロジェクト情報照会</a></span></td> 
			                                            </tr>  
			                                            <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="TUPConfirm.htm" target="_self">プロジェクト情報承認</a></span></td> 
			                                            </tr>  														
<tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="TUPConfirm.htm" target="_self">プロジェクト情報更新</a></span></td> 
			                                            </tr> 
														<tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="TUPConfirm.htm" target="_self">PD/PMアセイン情報更新</a></span></td> 
			                                            </tr> 
                    </table></td>
                  <td width="1" rowspan="12" bgcolor="#808080"></td>
                </tr>
              </table>
              <!-- navigator area end here -->
            </div></td>
          <td width="750" align="center" valign="top">

		<table width="100%"  cellspacing="1"> 
						<tr> 
							<td class="tdFuncTitle">プロジェクト選択</td> 
						</tr> 
		</table> 

		
							
		<table width="100%"  cellspacing="1" > 
						<tr> 
							<td class="txt_normal">${page.total }件中${page.startRow }－${page.endRow }件表示</td>
							<td align="right" class="txt_normal">&nbsp;&nbsp;
							<a class="first" href="${pageContext.request.contextPath }/pageFun?pagenum=1">最初</a>｜
							<a class="first" href="${pageContext.request.contextPath }/pageFun?pagenum=${page.prePage}">前</a>｜
							<a class="last" href="${pageContext.request.contextPath }/pageFun?pagenum=${page.nextPage}">次</a>｜
							<a class="last" href="${pageContext.request.contextPath }/pageFun?pagenum=${page.pages}">最後</a>&nbsp;</td> 
						</tr> 
					</table>
		 <div class="div_workarea_searchdetail">		 
								  <table border="0" cellspacing="1" cellpadding="1" width="100%">
								  		<tr><td>
											<table  border="0" cellspacing="1" cellpadding="1" align="left">
											  <tr  class="trHeader">
										<td width="100" align="center" class="txt_table_head">
											選
											</td>
											<td nowrap width="250" align="center" class="txt_table_head" rowspan="2">
												  DDC番号
												</td>
											
												<td nowrap width="400" align="center" class="txt_table_head" rowspan="2">
												  プロジェクト名
												</td>
												
										  </tr>
									 	</table>
								</td></tr>
								<tr ><td><form id="form1" name="form1" method="post" action="${pageContext.request.contextPath }/empupdateByeid">	
						 		
						          <table id="info" border="0" cellpadding="1" cellspacing="1">
							      <c:forEach items="${page.list }" var="fun" varStatus="vs">
							      <tr class="${vs.count%2==1? 'trOdd':'trEven' }">
                                  <td nowrap width="100" align="center" ><input name="eid" type="radio" value="${fun.eid }">
                                  <input type="hidden" value="${emp.managerEid} " disabled="disabled"></td>
											<td nowrap width="250" align="center"  >
											  <span class="txt_normal">
												${fun.eid }
											  </span>
											</td>
									
											<td nowrap width="400" align="center">
											  <span class="txt_normal">
												${fun.namejpn }
											  </span>
											</td>
											</c:forEach>											
                                         </table>
								</td> </tr>
                   </table>					 
                     </div>
                     
                    
						<table width="100%" cellspacing="1">
							
                        <div id="div1"  >
					    
					    <button id="btn">プロジェクト確認</button>
						
						
					
					  
					    </div>
						</table>
						
								</td>
							</tr>


									<tr>
										<td><br>
										<!-- 下のボタングループ 開始 -->
										<table border="0" cellspacing="0" cellpadding="0" width="100%"
											align="center" id="btn_group_bottom">
											<tr>
												<td colspan="8" height=5></td>
											</tr>
											<tr>
												<td width=25%></td>
												<td width=25% align=center>&nbsp;</td>
												<td width=25% align=center>&nbsp;</td>
												<td width=25%></td>
											</tr>
										</table>
										<!-- 下のボタングループ 終了 --></td>
									</tr>
						</table>
					</tr>
<tr>
				<td height="1"></td>
			</tr>
			<tr>
				<td height="20" bgcolor="#003366"></td>
			<tr>
				<td>
				<div align="center" class="string">? Copyright 2007 
					Hewlett-Packard TSG-JDDC</div>
				</td>
			</tr>
				</table>
				</td>
			</tr>
			
		</table>
		</TD>
	</TR>
</table>
</div>
<script type="text/javascript">

$("#update").click(function(){
	$("#form1").submit();
});


	$(".first").each(function(){
		var first = ${page.isFirstPage};
		console.log(first);
		if(first){
			$(this).removeAttr("href");
		}
	});

	$(".last").each(function(){
		var last = ${page.isLastPage};
		if(last){
			$(this).removeAttr("href");
		}
	});
	
	
	

</script>
</html>
