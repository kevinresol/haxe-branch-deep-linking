package branch.api;

import haxe.DynamicAccess;
using tink.CoreApi;

interface UrlApi {
	@:post('/')
	function create(body:{
		branch_key:String,
		?data:String,
		?campaign:String,
		?channel:String,
		?tags:Array<String>,
		?alias:String,
		?type:UrlType,
		?duration:Int,
	}):{url:String};
}

@:enum
abstract UrlType(Int) to Int {
	var Standard = 0;
	var OneTimeUse = 1;
	var Marketing = 2;
}