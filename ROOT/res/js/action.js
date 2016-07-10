function roll(direction){
	var imgLength = img.length;
	var dataLength = ad.length;
	var start = position;
	if('r' == direction){
		for(var i=0; i<imgLength; i++){
			start = start + 1;
			if(start > (dataLength-1))
				start = start - dataLength;
			img[i].src = ad[start].Photo;
		}
		position = position + 1;
		if(position > (dataLength-1))
			position = position - dataLength;
	}
	if('l' == direction){
		var a = true;
		for(var i=0; i<imgLength; i++){
			if(a){
				start = start - 1;
				if(start < 0){
					start = start + dataLength;
					a = false;
				}
				if(start < (dataLength-1)){
					a = false;
				}
			}else{
				start = start + 1;
				if(start > (dataLength-1)){
					start = start - dataLength;
					a = true;
				}
			}
			//alert(position + " === " + i + " === " + start);
			img[i].src = ad[start].Photo;
			if(start == (dataLength-1)){
				start = -1;
			}
		}
		position = position - 1;
		if(position < 0)
			position = position + dataLength;
	}
}

function right(){
	i++;
	var img0H = parseFloat(img[0].style.height);
	var img0W = parseFloat(img[0].style.width);
	var img0L = parseFloat(img[0].style.left);
	var img1H = parseFloat(img[1].style.height);
	var img1W = parseFloat(img[1].style.width);
	var img1L = parseFloat(img[1].style.left);
	var img2H = parseFloat(img[2].style.height);
	var img2W = parseFloat(img[2].style.width);
	var img2L = parseFloat(img[2].style.left);
	var img3H = parseFloat(img[3].style.height);
	var img3W = parseFloat(img[3].style.width);
	var img3L = parseFloat(img[3].style.left);
	var img4H = parseFloat(img[4].style.height);
	var img4W = parseFloat(img[4].style.width);
	var img4L = parseFloat(img[4].style.left);
	var img5H = parseFloat(img[5].style.height);
	var img5W = parseFloat(img[5].style.width);
	var img5L = parseFloat(img[5].style.left);

	//解决IE兼容性问题
	if(navigator.userAgent.indexOf("MSIE")>0 && i%2==0) {
		img1W = img1W + 1;
		img2H = img2H + 1;
		img2L = img2L + 1;
		img3H = img3H + 1;
		img3L = img3L + 1;
		img4L = img4L + 1;
		img4W = img4W + 1;
	}
	
	img[0].style.height = (img0H - 2).toString() + "px";
	img[0].style.left = (img0L - 5).toString() + "px";
	img[0].style.width = (img0W - 3).toString() + "px";
	
	img[1].style.height = (img1H - 1).toString() + "px";
	img[1].style.left = (img1L - 5).toString() + "px";
	img[1].style.width = (img1W - 1.5).toString() + "px";
	
	img[2].style.height = (img2H - 1.5).toString() + "px";
	img[2].style.left = (img2L - 6.5).toString() + "px";
	img[2].style.width = (img2W - 2).toString() + "px";
	
	img[3].style.height = (img3H + 1.5).toString() + "px";
	img[3].style.left = (img3L - 8.5).toString() + "px";
	img[3].style.width = (img3W + 2).toString() + "px";
	
	img[4].style.height = (img4H + 1).toString() + "px";
	img[4].style.left = (img4L - 6.5).toString() + "px";
	img[4].style.width = (img4W + 1.5).toString() + "px";
	
	img[5].style.height = (img5H + 2).toString() + "px";
	img[5].style.left = (img5L - 5).toString() + "px";
	img[5].style.width = (img5W + 3).toString() + "px";
	//alert(img[1].style.width);
	if(i>19){
		 clearInterval(hide);
		 reset();
		 roll('r');
		 isRunning = 'false';
	}
}

function left(){
	i++;
	var img0H = parseFloat(img[0].style.height);
	var img0W = parseFloat(img[0].style.width);
	var img0L = parseFloat(img[0].style.left);
	var img1H = parseFloat(img[1].style.height);
	var img1W = parseFloat(img[1].style.width);
	var img1L = parseFloat(img[1].style.left);
	var img2H = parseFloat(img[2].style.height);
	var img2W = parseFloat(img[2].style.width);
	var img2L = parseFloat(img[2].style.left);
	var img3H = parseFloat(img[3].style.height);
	var img3W = parseFloat(img[3].style.width);
	var img3L = parseFloat(img[3].style.left);
	var img4H = parseFloat(img[4].style.height);
	var img4W = parseFloat(img[4].style.width);
	var img4L = parseFloat(img[4].style.left);
	var img5H = parseFloat(img[5].style.height);
	var img5W = parseFloat(img[5].style.width);
	var img5L = parseFloat(img[5].style.left);

	//解决IE兼容性问题
	if(navigator.userAgent.indexOf("MSIE")>0 && i%2==0) {
		img0W = img0W + 1;
		img1H = img1H + 1;
		img1L = img1L + 1;
		img2H = img2H + 1;
		img2L = img2L + 1;
		img3L = img3L + 1;
		img3W = img3W + 1;
	}
	
	img[0].style.height = (img0H + 1).toString() + "px";
	img[0].style.left = (img0L + 5).toString() + "px";
	img[0].style.width = (img0W + 1.5).toString() + "px";
	
	img[1].style.height = (img1H + 1.5).toString() + "px";
	img[1].style.left = (img1L + 6.5).toString() + "px";
	img[1].style.width = (img1W + 2).toString() + "px";
	
	img[2].style.height = (img2H - 1.5).toString() + "px";
	img[2].style.left = (img2L + 8.5).toString() + "px";
	img[2].style.width = (img2W - 2).toString() + "px";
	
	img[3].style.height = (img3H - 1).toString() + "px";
	img[3].style.left = (img3L + 6.5).toString() + "px";
	img[3].style.width = (img3W - 1.5).toString() + "px";
	
	img[4].style.height = (img4H - 2).toString() + "px";
	img[4].style.left = (img4L + 5).toString() + "px";
	img[4].style.width = (img4W - 3).toString() + "px";
	
	img[5].style.height = (img5H + 2).toString() + "px";
	img[5].style.left = (img5L + 5).toString() + "px";
	img[5].style.width = (img5W + 3).toString() + "px";
	//alert(img[1].style.left);
	if(i>19){
		 clearInterval(hide);
		 reset();
		 roll('l');
		 isRunning = 'false';
	}
}
var isRunning;
function move(direction){
	
	//alert(isRunning);
	if(isRunning != 'udefined' && isRunning == 'true')
		return;
	frequency = 40;
	if(navigator.userAgent.indexOf("MSIE")>0) {
		frequency = 30;
   	}
   	if(isFirefox=navigator.userAgent.indexOf("Firefox")>0){
   		frequency = 40;
   	} 
	i = 0;
	if(direction == 'r'){
		cur = cur + 1;
		img[5].style.left = "1000px";
		hide = setInterval("right()", frequency);
		isRunning = 'true';
	}
	if(direction == 'l'){
		cur = cur - 1;
		img[5].style.left = "-90px";
		var pos = position - 1;
		if(pos < 0)
			pos = pos + ad.length;
		img[5].src = ad[pos].Photo;
		hide = setInterval("left()", frequency);
		isRunning = 'true';
	}
	if(cur > (ad.length - 1))
		cur = 0;
	if(cur < 0)
		cur = ad.length - 1;
	//alert(cur);
	adname.href = ad[cur].url;
	if(navigator.userAgent.indexOf("Firefox")>0){
		adname.textContent = ad[cur].name;
		adtel.textContent = ad[cur].phone;
		adaddr.textContent = ad[cur].address;
		adprice.textContent = ad[cur].price;
		adtime.textContent = ad[cur].time;
	} else {
		adname.innerText = ad[cur].name;
		adtel.innerText = ad[cur].phone;
		adaddr.innerText = ad[cur].address;
		adprice.innerText = ad[cur].price;
		adtime.innerText = ad[cur].time;
	}
}

function moveC(direction){
	if(isRunning != 'true'){
		move(direction);
		clearInterval(movec);
	}
}

function moveD(direction){
	move(direction);
	if('r' == direction){
		movec = setInterval("moveC('r')",5);
	} else {
		movec = setInterval("moveC('l')",5);
	}
}

function reset(){
	img[0].style.width = "140px";
	img[0].style.height = "118px";
	img[0].style.left = "64px";
	
	img[1].style.width = "192px";
	img[1].style.height = "160px";
	img[1].style.left = "217px";
	
	img[2].style.width = "290px";
	img[2].style.height = "236px";
	img[2].style.left = "436px";
	
	img[3].style.width = "192px";
	img[3].style.height = "160px";
	img[3].style.left = "757px";
	
	img[4].style.width = "140px";
	img[4].style.height = "105px";
	img[4].style.left = "960px";
	
	img[5].style.width = "10px";
	img[5].style.height = "10px";
	img[5].style.left = "-90px";
}

autoplay = setInterval("move('r')",3000);

function openNewPage(){
	window.open(ad[cur].url);
}
$(function(){
	//获取门店数据
	 $.ajax({
		            url: "/area/getareasByCityid/856",
		            dataType: "json",		            
		            async: false,		            
		            type: "get",
			        success: function(data) {
			            if(data.success){
			            	var store = data.body;
			            	var storenum = 0;

			            	for (var i = 0; i < store.length; i++) {
			            		storenum += parseInt(store[i].storeCount);
			            	};			            
			            	$("#total span").html(storenum);
			            	for (var i = 0; i < store.length; i++) {
			            		$("#allstore").append('<li id="'+store[i].id+'">'+store[i].name+'( <span>'+store[i].storeCount+'</span> )</li>')
			            	};
			            }else{
			            	console.log("该城市没有网点")
			            }
			            },
		            error:function(data){            	
		            console.log("请求错误")
		            }
	        	});
	 //门店详细数据获取
	 	 $.ajax({
		            url: "/store/listByArea/857",
		            dataType: "json",		            
		            async: false,		            
		            type: "get",
			        success: function(data) {
			            if(data.success){			            	
			            	var detail = data.body;
			            	console.log(detail);
			            	for (var i = 0; i < detail.length; i++) {
			            		$("#storedetail").append("<li><a address="+detail[i].address+" picurl="+detail[i].picurl+" latitude="+detail[i].latitude+" longitude="+detail[i].longitude+" >"+detail[i].name+"</a></li>")
			            	};
			            	$("#storedetail").append("<li><a id='kuozhan'>门店开阔中...</a></li>")
			            }else{
			            	console.log("该城市没有网点")
			            }
			            },
		            error:function(data){            	
		            console.log("请求错误")
		            }
	        	});
	//获取数据 end
	//获取对应地区门店信息
	$("#allstore li").hover(function(){
		var areaId = $(this).attr("id")
		if (areaId==="total") {
			return;
		} 
		// console.log(areaId);
		$.ajax({
		            url: "/store/listByArea/"+areaId,
		            dataType: "json",		            
		            async: false,		            
		            type: "get",
			        success: function(data) {
			            if(data.success){	
	      	     $("#storedetail").empty();
			            	var detail = data.body;			            	
			            	for (var i = 0; i < detail.length; i++) {
			            		$("#storedetail").append("<li><a address="+detail[i].address+" picurl="+detail[i].picurl+" latitude="+detail[i].latitude+" longitude="+detail[i].longitude+" >"+detail[i].name+"</a></li>")
			            	};
			            	$("#storedetail").append("<li><a id='kuozhan'>门店开阔中...</a></li>")
			            }else{
			            	console.log("该城市没有网点")
			            }
			            },
		            error:function(data){            	
		            console.log("请求错误")
		            }
	        	});
		detailclick();
		store_page();
	})
	//点击门店展示地图
	function detailclick() {
		$(".stroe-cont ul li a").click(function(){
			if ($(this).attr("id")==="kuozhan") {
				return;
			} 
			$("#allmap").empty();
			$("#allmap").attr("style","");
			// console.log($(this).picurl)
			var picurl = $(this).attr("picurl");
			var longitude = $(this).attr("longitude");
            var latitude = $(this).attr("latitude");
            var address = $(this).attr("address");
			$("#storelayer #picture").attr("src",picurl);
			$("#storelayer .iframe h3").text(address);

			
		layer.open({
		      			type:1,
		      			area:["994px"],
		      			content:$("#storelayer"),
		      			shadeClose:true,
		      			title:false,
		      			scrollbar:false,
      				});
		initMap(longitude, latitude);

				});

	}
	store_page();
	store_title();
	detailclick();
	// 根据店面数量分页
	function store_page(){
			var storeAll = $(".stroe-cont ul li")
	var storeNum = storeAll.length;
	var sCurNum = $(".page_store .num .cur-num");
	sCurNum.text(1)
	if (storeNum > 0) {
		 sPNum = Math.ceil(storeNum/5);		 
		 $(".page_store .num .total-num").html(sPNum);
		$('.page_store .pre').bind('click',function(){
			curNum = sCurNum.text();
					if(curNum >1 && sPNum!==1){						
						$(storeAll).css('display','none');
						--curNum;
						for(var i=0;i<5;i++){
							$(storeAll[5*(curNum-1)+i]).css('display','block');
						}
						sCurNum.text(curNum);
						return;
					}
	});  //pre click
	$('.page_store .next').bind('click',function(){
					CurNum = $(".page_store .num .cur-num").text();
					sPNum = $('.page_store .total-num').html();
					if(CurNum < sPNum && sPNum >1  ){
						$(storeAll).css('display','none');
						CurNum = parseInt(CurNum) + 1 ;
						for(var i=0;i<5;i++){
							$(storeAll[5*(CurNum-1)+i]).css('display','block');
						}
						sCurNum.text(CurNum);
						return;
					}else{
						return;
					}
				});
				// next click
	}

	};
	// 根据城市区域多少分页
		function store_title(){
			var $tabs = $('.store-title ul li');
			var tabTotal = $tabs.length;
			if(tabTotal>0){
				
				var pNum = Math.ceil(tabTotal/6);
				var curNum = 1;
				$($tabs).css('display','none');
				for(var i=0;i<6;i++){
							$($tabs[6*(curNum-1)+i]).css('display','inline-block');
						}
				$('.title_page .pre').bind('click',function(){
					if(curNum > 1){
						$($tabs).css('display','none');
						--curNum;
						for(var i=0;i<6;i++){
							$($tabs[6*(curNum-1)+i]).css('display','inline-block');
						}
					}else{
						return;
					}
				});
				$('.title_page .next').bind('click',function(){
					if(curNum < pNum){
						$($tabs).css('display','none');
						++curNum;
						for(var i=0;i<6;i++){
							$($tabs[6*(curNum-1)+i]).css('display','inline-block');
						}
					}else{
						return;
					}
				});
			}
		};
		//  百度地图api
		function initMap(longitude, latitude) { 
        // 百度地图API功能
        var map = new BMap.Map("allmap");
        var top_left_control = new BMap.ScaleControl({anchor: BMAP_ANCHOR_TOP_LEFT});// 左上角，添加比例尺
        var top_left_navigation = new BMap.NavigationControl();  //左上角，添加默认缩放平移控件
        var top_right_navigation = new BMap.NavigationControl({anchor: BMAP_ANCHOR_TOP_RIGHT, type: BMAP_NAVIGATION_CONTROL_SMALL});
        map.addControl(top_left_control);
        map.addControl(top_left_navigation);
        map.addControl(top_right_navigation);
        if (longitude=="" || latitude =="") {
            var point = new BMap.Point(0,0);
            map.centerAndZoom(point, 18);
        } else {
            var point = new BMap.Point(longitude,latitude);
            map.centerAndZoom(point, 18);
        }
        map.enableScrollWheelZoom(true);
        var marker = new BMap.Marker(point);  // 创建标注
        map.addOverlay(marker);               // 将标注添加到地图中
        marker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画
    }

});