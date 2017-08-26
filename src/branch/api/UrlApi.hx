package branch.api;

import haxe.DynamicAccess;
using tink.CoreApi;

interface UrlApi {
	
	
	@:get('/')
	function get(query:{
		url:String,
		branch_key:String,
	}):LinkData;
	
	@:post('/')
	function create(body:{
		> LinkData,
		branch_key:String,
	}):{url:String};
}

@:enum
abstract UrlType(Int) {
	var Standard = 0;
	var OneTimeUse = 1;
	var Marketing = 2;
}

typedef LinkData = {
	?data:DynamicAccess<Dynamic>,
	?channel:String,
	?feature:String,
	?campaign:String,
	?stage:String,
	?tags:Array<String>,
	?alias:String,
	?duration:Int,
	?type:UrlType,
}