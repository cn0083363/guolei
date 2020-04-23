<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<title>社員情報検索結果一覧</title>
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
<script type="text/javascript">
	if('${updatesuccess}'=="ok"){
		alert("更新ok");
	}
	
</script>
</head>
<body > 
<SCRIPT language=javascript src="js/common.js"></SCRIPT> 
<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
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
                                            <td> <p class="titleCenter"> <font face="Times New Roman"> <b>社員情報検索結果一覧</b></font></p></td> 
                                        </tr> 
                                    </table></td> 
                            </tr> 
                        </table> 
                            <table border="0" cellspacing="0" cellpadding="0" width="100%" height="24" bgcolor="#FFFFFF"> 
                                <tr bgcolor="#85B7FA"> 
                                    <td>&nbsp;</td> 
                                    <td width="150" class="txt_normal">操作者：${user.eid }</td> 
                                    <td width="60" class="txt_normal"><div align="right"><a href="Login.htm">ログアウト</a></div></td> 
                                </tr> 
                            </table> 
                            <HR> 
                            <table border="0" cellspacing="0" cellpadding="0" width="100%"> 
                                <tr> 
                                    <td valign="top"> <div align="center" class="div_naviarea" id="navi" > 
                                        <!-- navigator area start here --> 
                                        <table border="0" cellspacing="0" cellpadding="0"> 
                                        	<tr> 
                                                <td width="2" rowspan="12" bgcolor="#808080" >&nbsp;</td> 
                                                <td width="205" >
                                                	<table 	border="0" cellspacing="0" cellpadding="0" width="100%" > 
                                                		                                                         <tr> 
                                                			<td width="205" height="30"><span class="menuBranch">&#8226;社員管理</span></td> 
			                                            </tr> 
			                                            <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="./employeRegister00.htm" target="_self">社員情報登録</a></span></td> 
			                                            </tr> 
			                                            <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="./employeQuery.htm" target="_self">社員情報検索</a></span></td> 
			                                            </tr> 
			                                             <tr> 
			                                                <td height="30"><span class="menuItem">　　<a href="./confirmInfoQuery.htm" target="_self">社員情報承認</a></span></td> 
			                                            </tr> 
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
							<td class="tdFuncTitle">検索結果一覧</td> 
						</tr> 
					</table> 
					<table width="100%"  cellspacing="1" > 
						<tr> 
							<td class="txt_normal">${page.total }件中${page.startRow }－${page.endRow }件表示</td>
							<td align="right" class="txt_normal">&nbsp;&nbsp;
							<a  href="${pageContext.request.contextPath }/pageEmp?pagenum=1">最初</a>｜
					        <a  href="${pageContext.request.contextPath }/pageEmp?pagenum=${page.prePage}">前</a>｜
							<a  href="${pageContext.request.contextPath }/pageEmp?pagenum=${page.nextPage}">次</a>｜
							<a  href="${pageContext.request.contextPath }/pageEmp?pagenum=${page.pages}">最後</a>&nbsp;</td> 
						</tr> 
					</table>

				<table border="0" cellspacing="0" cellpadding="0" align="left">
						                                        <tr><td>
						                                        <!-- Work area start here --> 
						                                        <div class="div_workarea_searchdetail">
						                                        <table border="0" cellspacing="0" cellpadding="0" align="left">

                      <tr align="left"> 
                        <td>
                        
						                                         <table border="0" cellspacing="1" cellpadding="1"> 
                            <tr class="trHeader">
                              <td nowrap width="25" align="center"class="txt_table_head" rowspan="2">選</td>
							                                                     <td nowrap width="80" align="center"class="txt_table_head" rowspan="2">EID</td>
							                                                     <td nowrap width="240" align="center"class="txt_table_head" colspan="2">社員名</td>
                              <td nowrap width="30" align="center" class="txt_table_head" rowspan="2">性別</td> 
                              <td nowrap width="115" align="center" class="txt_table_head" rowspan="2">電話番号</td>
							  <td nowrap width="120" align="center" class="txt_table_head" rowspan="2">緊急連絡番号</td>
							  <td nowrap width="50" align="center" class="txt_table_head" rowspan="2">部署</td>
							  <td nowrap width="80" align="center" class="txt_table_head" rowspan="2">入社日</td>
							  <td nowrap width="60" align="center" class="txt_table_head" rowspan="2">在職状態</td>
							  <td nowrap width="70" align="center" class="txt_table_head" rowspan="2">所属組織</td>
							  <td nowrap width="50" align="center" class="txt_table_head" rowspan="2">HP/BP</td> 
							 </tr>
							 <tr  class="trHeader">
							  <td nowrap width="120" align="center" class="txt_table_head">(英語)</td>
							  <td nowrap width="120" align="center" class="txt_table_head">(日本語)</td>
							  </tr>
                          </table>
						</td> 
                      </tr>
					
                      <tr align="left">
                        <td><form id="Myform" name="Myform" method="post" action="a.jsp">

						<table border="0" cellpadding="1" cellspacing="1">
						<c:forEach items="${page.list }" var="emp" varStatus="vs">
						    <tr class="${vs.count%2==1? 'trOdd':'trEven' }">
                              <td nowrap width="25" align="center" ><input name="eid" type="radio" value="${emp.eid }">
                              <input type="hidden" value="${emp.managerEid} " disabled="disabled"></td>
							  <td nowrap width="80" align="center" ><span class="txt_normal"><a href="empByeid?eid=${emp.eid }">${emp.eid }</a></span></td>	
							  <td nowrap width="120" align="center" ><span class="txt_normal">${emp.name }</span></td>			  
							  <td nowrap width="120" align="center" ><span class="txt_normal">${emp.nameCn }</span></td>
							  <td nowrap width="30" align="center" ><span class="txt_normal">${emp.gender }</span></td> 
							  <td nowrap width="115" align="center" ><span class="txt_normal">00862138890001</span></td>
							  <td nowrap width="120" align="center" ><span class="txt_normal">00862138890001</span></td>
							  <td nowrap width="50" align="center"><span class="txt_normal">${emp.department.name }</span></td>
                              <td nowrap width="80" align="center" ><span class="txt_normal">2007/10/12</span></td>
                              <td nowrap width="60" align="center" ><span class="txt_normal">${emp.work.name }</span></td>
							  <td nowrap width="70" align="center"><span class="txt_normal">JDCC</span></td>
							  <td nowrap width="50" align="center" ><span class="txt_normal">BP</span></td>
                            </tr>
                            </c:forEach>
                           
							<!-- <c:forEach items="${page.list }" var="emp" varStatus="vs">
							  <tr class="${vs.count%2==1? 'trOdd':'trEven' }">
							  <td nowrap width="25" align="center" ><input name="eid" type="radio" value="${emp.eid }">
                              <input type="hidden" value="${emp.managerEid} " disabled="disabled"></td>
                              <td nowrap width="25" align="center" ><input name="radiobutton" type="radio" value="${emp.eid }"></td>
                              <td nowrap width="80" align="center" ><span class="txt_normal"><a href="empByeid?eid=${emp.eid }">${emp.eid }</a></span></td>	
							  <td nowrap width="120" align="center" ><span class="txt_normal">${emp.name }</span></td>			  
							  <td nowrap width="120" align="center" ><span class="txt_normal">${emp.nameCn }</span></td>
							  <td nowrap width="30" align="center" ><span class="txt_normal">${emp.gender }</span></td> 
							  <td nowrap width="115" align="center" ><span class="txt_normal">00862138890002</span></td>
							  <td nowrap width="120" align="center" ><span class="txt_normal">00862138890002</span></td>
							  <td nowrap width="50" align="center"><span class="txt_normal">${emp.department.name }</span></td>
                              <td nowrap width="80" align="center" ><span class="txt_normal">2007/10/12</span></td>
                              <td nowrap width="60" align="center" ><span class="txt_normal">${emp.work.name }</span></td>
							  <td nowrap width="70" align="center"><span class="txt_normal">JDCC</span></td>
							  <td nowrap width="50" align="center" ><span class="txt_normal">HP</span></td>
							  </tr>
							  </c:forEach>
                              
							<tr class="trOdd"> 
                              <td nowrap width="25" align="center" ><input name="radiobutton" type="radio" value="radiobutton"></td>
							  <td nowrap width="80" align="center" ><span class="txt_normal"><a href="employeReferto3.htm">20311113</a></span></td>	
							  <td nowrap width="120" align="center" ><span class="txt_normal">TANAKA ITIROU</span></td>			  
							  <td nowrap width="120" align="center" ><span class="txt_normal">田中三郎</span></td>
							  <td nowrap width="30" align="center" ><span class="txt_normal">男</span></td> 
							  <td nowrap width="115" align="center" ><span class="txt_normal">00862138890003</span></td>
							  <td nowrap width="120" align="center" ><span class="txt_normal">00862138890003</span></td>
							  <td nowrap width="50" align="center"><span class="txt_normal">DL</span></td>
                              <td nowrap width="80" align="center" ><span class="txt_normal">2007/10/12</span></td>
                              <td nowrap width="60" align="center" ><span class="txt_normal">勤務中</span></td>
							  <td nowrap width="70" align="center"><span class="txt_normal">JDCC</span></td>
							  <td nowrap width="50" align="center" ><span class="txt_normal">HP</span></td>
                              </tr>
							<tr class="trEven"> 
                              <td nowrap width="25" align="center" ><input name="radiobutton" type="radio" value="radiobutton"></td>
							  <td nowrap width="80" align="center" ><span class="txt_normal"><a href="employeReferto4.htm">20311114</a></span></td>	
							  <td nowrap width="120" align="center" ><span class="txt_normal">TANAKA ITIROU</span></td>			  
							  <td nowrap width="120" align="center" ><span class="txt_normal">田中四郎</span></td>
							  <td nowrap width="30" align="center" ><span class="txt_normal">男</span></td> 
							  <td nowrap width="115" align="center" ><span class="txt_normal">00862138890004</span></td>
							  <td nowrap width="120" align="center" ><span class="txt_normal">00862138890004</span></td>
							  <td nowrap width="50" align="center"><span class="txt_normal">SH</span></td>
                              <td nowrap width="80" align="center" ><span class="txt_normal">2007/10/12</span></td>
                              <td nowrap width="60" align="center" ><span class="txt_normal">長期休暇</span></td>
							  <td nowrap width="70" align="center"><span class="txt_normal">JDCC</span></td>
							  <td nowrap width="50" align="center" ><span class="txt_normal">HP</span></td>
                              </tr>
							<tr class="trOdd"> 
                              <td nowrap width="25" align="center" ><input name="radiobutton" type="radio" value="radiobutton"></td>
							  <td nowrap width="80" align="center" ><span class="txt_normal"><a href="employeReferto5.htm">20311115</a></span></td>	
							  <td nowrap width="120" align="center" ><span class="txt_normal">TANAKA ITIROU</span></td>			  
							  <td nowrap width="120" align="center" ><span class="txt_normal">田中五郎</span></td>
							  <td nowrap width="30" align="center" ><span class="txt_normal">男</span></td> 
							  <td nowrap width="115" align="center" ><span class="txt_normal">00862138890005</span></td>
							  <td nowrap width="120" align="center" ><span class="txt_normal">00862138890005</span></td>
							  <td nowrap width="50" align="center"><span class="txt_normal">Neusoft</span></td>
                              <td nowrap width="80" align="center" ><span class="txt_normal">2007/10/12</span></td>
                              <td nowrap width="60" align="center" ><span class="txt_normal">勤務中</span></td>
							  <td nowrap width="70" align="center"><span class="txt_normal">JDCC</span></td>
							  <td nowrap width="50" align="center" ><span class="txt_normal">BP</span></td>
                              </tr>
							<tr class="trEven"> 
                              <td nowrap width="25" align="center" ><input name="radiobutton" type="radio" value="radiobutton"></td>
							  <td nowrap width="80" align="center" ><span class="txt_normal"><a href="#">20311116</a></span></td>	
							  <td nowrap width="120" align="center" ><span class="txt_normal">TANAKA ITIROU</span></td>			  
							  <td nowrap width="120" align="center" ><span class="txt_normal">田中六郎</span></td>
							  <td nowrap width="30" align="center" ><span class="txt_normal">男</span></td> 
							  <td nowrap width="115" align="center" ><span class="txt_normal">00862138890006</span></td>
							  <td nowrap width="120" align="center" ><span class="txt_normal">00862138890006</span></td>
							  <td nowrap width="50" align="center"><span class="txt_normal">SH</span></td>
                              <td nowrap width="80" align="center" ><span class="txt_normal">2007/10/12</span></td>
                              <td nowrap width="60" align="center" ><span class="txt_normal">勤務中</span></td>
							  <td nowrap width="70" align="center"><span class="txt_normal">JDCC</span></td>
							  <td nowrap width="50" align="center" ><span class="txt_normal">HP</span></td>
                              </tr>
							<tr class="trOdd"> 
                              <td nowrap width="25" align="center" ><input name="radiobutton" type="radio" value="radiobutton"></td>
							  <td nowrap width="80" align="center" ><span class="txt_normal"><a href="#">20311117</a></span></td>	
							  <td nowrap width="120" align="center" ><span class="txt_normal">TANAKA ITIROU</span></td>			  
							  <td nowrap width="120" align="center" ><span class="txt_normal">田中七郎</span></td>
							  <td nowrap width="30" align="center" ><span class="txt_normal">男</span></td> 
							  <td nowrap width="115" align="center" ><span class="txt_normal">00862138890007</span></td>
							  <td nowrap width="120" align="center" ><span class="txt_normal">00862138890007</span></td>
							  <td nowrap width="50" align="center"><span class="txt_normal">BJ</span></td>
                              <td nowrap width="80" align="center" ><span class="txt_normal">2007/10/12</span></td>
                              <td nowrap width="60" align="center" ><span class="txt_normal">退職</span></td>
							  <td nowrap width="70" align="center"><span class="txt_normal">JDCC</span></td>
							  <td nowrap width="50" align="center" ><span class="txt_normal">HP</span></td>
                              </tr>
							<tr class="trEven"> 
                              <td nowrap width="25" align="center" ><input name="radiobutton" type="radio" value="radiobutton"></td>
							  <td nowrap width="80" align="center" ><span class="txt_normal"><a href="#">20311118</a></span></td>	
							  <td nowrap width="120" align="center" ><span class="txt_normal">TANAKA ITIROU</span></td>			  
							  <td nowrap width="120" align="center" ><span class="txt_normal">田中八郎</span></td>
							  <td nowrap width="30" align="center" ><span class="txt_normal">男</span></td> 
							  <td nowrap width="115" align="center" ><span class="txt_normal">00862138890008</span></td>
							  <td nowrap width="120" align="center" ><span class="txt_normal">00862138890008</span></td>
							  <td nowrap width="50" align="center"><span class="txt_normal">SH</span></td>
                              <td nowrap width="80" align="center" ><span class="txt_normal">2007/10/12</span></td>
                              <td nowrap width="60" align="center" ><span class="txt_normal">勤務中</span></td>
							  <td nowrap width="70" align="center"><span class="txt_normal">JDCC</span></td>
							  <td nowrap width="50" align="center" ><span class="txt_normal">HP</span></td>
                              </tr>
							<tr class="trOdd"> 
                              <td nowrap width="25" align="center" ><input name="radiobutton" type="radio" value="radiobutton"></td>
							  <td nowrap width="80" align="center" ><span class="txt_normal"><a href="#">20311119</a></span></td>	
							  <td nowrap width="120" align="center" ><span class="txt_normal">TANAKA ITIROU</span></td>			  
							  <td nowrap width="120" align="center" ><span class="txt_normal">田中九郎</span></td>
							  <td nowrap width="30" align="center" ><span class="txt_normal">男</span></td> 
							  <td nowrap width="115" align="center" ><span class="txt_normal">00862138890009</span></td>
							  <td nowrap width="120" align="center" ><span class="txt_normal">00862138890009</span></td>
							  <td nowrap width="50" align="center"><span class="txt_normal">Neusoft</span></td>
                              <td nowrap width="80" align="center" ><span class="txt_normal">2007/10/12</span></td>
                              <td nowrap width="60" align="center" ><span class="txt_normal">勤務中</span></td>
							  <td nowrap width="70" align="center"><span class="txt_normal">JDCC</span></td>
							  <td nowrap width="50" align="center" ><span class="txt_normal">BP</span></td>
                              </tr>
							<tr class="trEven"> 
                              <td nowrap width="25" align="center" ><input name="radiobutton" type="radio" value="radiobutton"></td>
							  <td nowrap width="80" align="center" ><span class="txt_normal"><a href="#">20311120</a></span></td>	
							  <td nowrap width="120" align="center" ><span class="txt_normal">TANAKA ITIROU</span></td>			  
							  <td nowrap width="120" align="center" ><span class="txt_normal">田中十郎</span></td>
							  <td nowrap width="30" align="center" ><span class="txt_normal">男</span></td> 
							  <td nowrap width="115" align="center" ><span class="txt_normal">00862138890011</span></td>
							  <td nowrap width="120" align="center" ><span class="txt_normal">00862138890011</span></td>
							  <td nowrap width="50" align="center"><span class="txt_normal">CQ</span></td>
                              <td nowrap width="80" align="center" ><span class="txt_normal">2007/10/12</span></td>
                              <td nowrap width="60" align="center" ><span class="txt_normal">勤務中</span></td>
							  <td nowrap width="70" align="center"><span class="txt_normal">JDCC</span></td>
							  <td nowrap width="50" align="center" ><span class="txt_normal">HP</span></td>
                              </tr> -->
                             
                          </table>
						  </form>
						</td>
					  </tr>

					  </table>
					  
					  <!-- Work area end here --> 
					  </div></td></tr>

					  <tr>
					    <td><br>
						  <table width="711" border="0" align="left" cellpadding="1" cellspacing="1">
                            <tr> 
                              <td width="70"></td> 
                              <!--  <td width="138"><input name="B2" type="button" class="string" onClick="dow()" value="　　参　照　　"></td> -->
							  <td width="138"><input id="update" name="B2" type="button" class="string"onclick="save()" value="　　更　新　　"></td> 
							  <td width="138"><input id="btn2" name="B2"  type="button" class="string" onclick="pre()"  value="　　出    力　　"></td>
							  <td width="218"><input name="B3" type="button" class="string" onClick="openWindow('employeQuery.htm')" value="　　再検索　　"></td>
                            </tr> 
                          </table>
						</td>
					  </tr>
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
 <script type="text/javascript">

function save()
{
var form=document.getElementById("Myform");
form.action="${pageContext.request.contextPath }/empupdateByeid";
form.submit();
}
function pre()
{
var form=document.getElementById("Myform");
form.action="${pageContext.request.contextPath }/empInfoOut";
form.submit();
 
}
 function dow()
{
	var form=document.getElementById("Myform");
	form.action="${pageContext.request.contextPath }/employeReferto1";
	form.submit();
	 
	}



	$(".first").each(function(){
		var first = '${page.isFirstPage}';
		console.log(first);
		if(first){
			$(this).removeAttr("href");
		}
	});

	$(".last").each(function(){
		var last = '${page.isLastPage}';
		if(last){
			$(this).removeAttr("href");
		}
	});
	
	$("#info input[type='radio']").each(function(){
		var eid = '${user.eid}';
		var role = '${user.roleCode}';
		if(role == "0004" || role == "0003"){
			$(this).hide();
			var obja = $(this).parent().next().children().children();
			if(obja.html() != eid){
				$(obja).removeAttr("href");
			}
		}else if(role == "0001"){
			var mgrEid = $(this).next().val();
			console.log(mgrEid);
			if(mgrEid != eid){
				$(this).hide();
			}
		}
	});
	
	

</script>
</html>

