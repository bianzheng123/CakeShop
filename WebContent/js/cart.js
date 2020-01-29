/**
 * 加入购物车
 */
function buy(goodid){
	$.post("goods_buy", {goodsid:goodid}, function(data){
		//ajax
		//post第一个参数是将操作发送到哪个servlet进行处理
		//第二个参数指的是传递什么数据
		//data指的是服务端返回的值
		if(data=="ok"){
			layer.msg("添加到购物车", {time:800}, function(){
				location.reload();
			});
		}else if(data=="fail"){
			layer.msg("库存不足", {time:800}, function(){
				location.reload();
			});
		}
	});
}
/**
 * 购物车减去
 */
function lessen(goodsid){
	$.post("goods_lessen", {goodsid:goodsid}, function(data){
		if(data=="ok"){
			layer.msg("操作成功!", {time:800}, function(){
				location.reload();
			});
		}
	});
}
/**
 * 购物车删除
 */
function deletes(goodid){
	$.post("goods_delete", {goodsid:goodid}, function(data){
		if(data=="ok"){
			layer.msg("删除成功!", {time:800}, function(){
				location.reload();
			});
		}
	});
}