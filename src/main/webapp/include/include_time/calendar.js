var gObj = new Object();
var goSelectTag = new Array();
var gGray = "#808080";
var gToggle = "#006666";    //鼠标移上时的字体颜色和时间背景色
var gBG = "#FDF5E6";   //时间背景颜色
var previousObject = null;

var gNow = new Date();
var gYear = gNow.getFullYear();
var gMonth = gNow.getMonth()+1;
var gDay = gNow.getDate();

var gCalMode = "";
var gCalDefDate = "";

var CAL_MODE_NOBLANK = "2";

function fSetDate(iYear, iMonth, iDay){

  if ((iYear == 0) && (iMonth == 0) && (iDay == 0)){
  	gObj.value = "";
  }else{
  	iMonth = iMonth + 100 + "";
  	iMonth = iMonth.substring(1);
  	iDay   = iDay + 100 + "";
  	iDay   = iDay.substring(1);
  	gObj.value = iYear+"-"+iMonth+"-"+iDay;
  }

  for (i in goSelectTag)
  	goSelectTag[i].style.visibility = "visible";
  goSelectTag.length = 0;

  window.returnValue=gObj.value;
  window.close();
}

function HiddenDiv()
{
	var i;
  VicPopCal.style.visibility = "hidden";
  for (i in goSelectTag)
  	goSelectTag[i].style.visibility = "visible";
  goSelectTag.length = 0;

}
function fSetSelected(aCell){
  var iOffset = 0;
  var iYear = parseInt(tbSelYear.value);
  var iMonth = parseInt(tbSelMonth.value);

  aCell.bgColor = gBG;
  with (aCell.children["cellText"]){
  	var iDay = parseInt(innerText);
  	if (color==gGray)
		iOffset = (Victor<10)?-1:1;


	if( color == gGray ){
		iOffset = (iDay < 15 )?1:-1;
	}

	iMonth += iOffset;
	if (iMonth<1) {
		iYear--;
		iMonth = 12;
	}else if (iMonth>12){
		iYear++;
		iMonth = 1;
	}
  }
  fSetDate(iYear, iMonth, iDay);
}

function Point(iX, iY){
	this.x = iX;
	this.y = iY;
}

function fBuildCal(iYear, iMonth) {
  var aMonth=new Array();
  for(i=1;i<7;i++)
  	aMonth[i]=new Array(i);

  var dCalDate=new Date(iYear, iMonth-1, 1);
  var iDayOfFirst=dCalDate.getDay();
  var iDaysInMonth=new Date(iYear, iMonth, 0).getDate();
  var iOffsetLast=new Date(iYear, iMonth-1, 0).getDate()-iDayOfFirst+1;
  var iDate = 1;
  var iNext = 1;

  for (d = 0; d < 7; d++)
	aMonth[1][d] = (d<iDayOfFirst)?-(iOffsetLast+d):iDate++;
  for (w = 2; w < 7; w++)
  	for (d = 0; d < 7; d++)
		aMonth[w][d] = (iDate<=iDaysInMonth)?iDate++:-(iNext++);
  return aMonth;
}

function fDrawCal(iYear, iMonth, iCellHeight, sDateTextSize) {
  var WeekDay = new Array("日","一","二","三","四","五","六");
  var styleTD = " bgcolor='"+gBG+"' bordercolor='"+gBG+"' valign='middle' align='center' height='"+iCellHeight+"' style='font-size:12px; ";
  with (document) {
	write("<tr>");
	for(i=0; i<7; i++)
		write("<td bgcolor='#F2F8FF' valign='middle' align='center' height='18' style='font-size:12px;'><Font color='#000000'><B>" + WeekDay[i] + "</B></Font></td>");
	write("</tr>");

  	for (w = 1; w < 7; w++) {
		write("<tr>");
		for (d = 0; d < 7; d++) {
			write("<td id=calCell "+styleTD+"cursor:hand;' onMouseOver='this.bgColor=gToggle' onMouseOut='this.bgColor=gBG' onclick='fSetSelected(this)'>");
			write("<font id=cellText ><b> </b></font>");
			write("</td>")
		}
		write("</tr>");
	}
  }
}

function fUpdateCal(iYear, iMonth) {
  myMonth = fBuildCal(iYear, iMonth);
  var i = 0;
  for (w = 0; w < 6; w++)
	for (d = 0; d < 7; d++)
		with (cellText[(7*w)+d]) {
			Victor = i++;
			if (myMonth[w+1][d]<0) {
				color = gGray;
				innerText = -myMonth[w+1][d];
			}else{
				if( d == 0 ){
					color = "red";
				}else if( d == 6 ){
					color = "red";
				}else{
					color = "black";
				}
				innerText = myMonth[w+1][d];
			}
		}
}

function fSetYearMon(iYear, iMon){
  tbSelMonth.options[iMon-1].selected = true;
  for (i = 0; i < tbSelYear.length; i++)
	if (tbSelYear.options[i].value == iYear)
		tbSelYear.options[i].selected = true;
  fUpdateCal(iYear, iMon);
}

function fPrevMonth(){
  var iMon = tbSelMonth.value;
  var iYear = tbSelYear.value;

  if (--iMon<1) {
	  iMon = 12;
	  iYear--;
  }

  fSetYearMon(iYear, iMon);
}

function fNextMonth(){
  var iMon = tbSelMonth.value;
  var iYear = tbSelYear.value;

  if (++iMon>12) {
	  iMon = 1;
	  iYear++;
  }

  fSetYearMon(iYear, iMon);
}

function fToggleTags(){
  with (document.all.tags("SELECT")){
 	for (i=0; i<length; i++)
 		if ((item(i).Victor!="Won")&&fTagInBound(item(i))){
 			item(i).style.visibility = "hidden";
 			goSelectTag[goSelectTag.length] = item(i);
 		}
  }
}

function fTagInBound(aTag){
  with (VicPopCal.style){
  	var l = parseInt(left);
  	var t = parseInt(top);
  	var r = l+parseInt(width);
  	var b = t+parseInt(height);
	var ptLT = fGetXY(aTag);
	return !((ptLT.x>r)||(ptLT.x+aTag.offsetWidth<l)||(ptLT.y>b)||(ptLT.y+aTag.offsetHeight<t));
  }
}

function fGetXY(aTag){
  var oTmp = aTag;
  var pt = new Point(0,0);
  do {
  	pt.x += oTmp.offsetLeft;
  	pt.y += oTmp.offsetTop;
  	oTmp = oTmp.offsetParent;
  } while(oTmp.tagName!="BODY");
  return pt;
}

function fPopCalendar(popCtrl, dateCtrl, mode, defDate){
	gCalMode = mode;
	gCalDefDate = defDate;

  if (popCtrl == previousObject){
	  	if (VicPopCal.style.visibility == "visible"){
  		return true;
  	}

  }
  previousObject = popCtrl;
  gObj = dateCtrl;
  fSetYearMon(gYear, gMonth);
  var point = fGetXY(popCtrl);

	if( gCalMode == CAL_MODE_NOBLANK ){
		document.all.CAL_B_BLANK.style.visibility = "hidden";
	}else{
		document.all.CAL_B_BLANK.style.visibility = "visible";
	}

  with (VicPopCal.style) {
  	left = point.x;
	top  = point.y+popCtrl.offsetHeight;
	width = VicPopCal.offsetWidth;
	height = VicPopCal.offsetHeight;
	fToggleTags(point);
	visibility = 'visible';
  }
}

var gMonths = new Array("1月","2月","3月","4月","5月","6月","7月","8月","9月","10月","11月","12月");

with (document) {
write("<Div id='VicPopCal' style='OVERFLOW:hidden;POSITION:absolute;VISIBILITY:hidden;border:0px ridge;width:100%;height:100%;top:0;left:0;z-index:100;overflow:hidden'>");
write("<table border='0' bgcolor='#7BBBEF'>");
write("<TR>");
write("<td valign='middle' align='center'><input type='button' name='PrevMonth' value='<' style='height:20;width:20;FONT:bold;border:1 black solid;background:#f4f4f4' onClick='fPrevMonth()'>");

write("&nbsp;<SELECT name='tbSelYear' onChange='fUpdateCal(tbSelYear.value, tbSelMonth.value)' Victor='Won' style='background:#f4f4f4'>");
for(i=1900;i<2051;i++)
	write("<OPTION value='"+i+"'>"+i+"年</OPTION>");
write("</SELECT>");
write("&nbsp;<select name='tbSelMonth' onChange='fUpdateCal(tbSelYear.value, tbSelMonth.value)' Victor='Won' style='background:#f4f4f4'>");
for (i=0; i<12; i++)
	write("<option value='"+(i+1)+"'>"+gMonths[i]+"</option>");
write("</SELECT>");
write("&nbsp;<input type='button' name='PrevMonth' value='>' style='height:20;width:20;FONT:bold;border:1 black solid;background:#f4f4f4' onclick='fNextMonth()'>");
write("</td>");
write("</TR><TR>");
write("<td align='center'>");
write("<DIV style='background-color:#000000'><table cellpadding='0' cellspacing='1' width='100%' border='0'>");
fDrawCal(gYear, gMonth, 8, '12');
write("</table></DIV>");
write("</td>");
write("</TR><TR><TD align='center'>");
write("<TABLE width='100%><TR><TD align='center'>");
write("<B ID=\"CAL_B_BLANK\" style='color:"+gBG+"; visibility:visible; cursor:hand; font-size:12px' onclick='fSetDate(0,0,0)' onMouseOver='this.style.color=gToggle' onMouseOut='this.style.color=gBG'></B>");
write("</td><td algin='Right'>");
write("<B style='color:"+gBG+";cursor:hand; font-size:12px' onclick='fSetDate(gYear,gMonth,gDay)' onMouseOver='this.style.color=gToggle' onMouseOut='this.style.color=gBG'>当前时间:"+gYear+"-"+gMonth+"-"+gDay+"</B>");
write("<B style='color:"+gBG+";cursor:hand; font-size:12px' onclick='fSetDate(0,0,0)' onMouseOver='this.style.color=gToggle' onMouseOut='this.style.color=gBG'> 清空</B>");
write("</td></tr></table>");
write("</TD></TR>");
write("</TABLE></Div>");
}
