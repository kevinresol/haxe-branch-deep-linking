package branch;

import haxe.DynamicAccess;

abstract DataBuilder(DynamicAccess<String>) {
	
	public inline function new()
		this = {};
		
	public inline function set(key:DataKey, value:String):DataBuilder {
		this.set(key, value);
		return cast this;
	}
	
	@:to
	public inline function toString():String {
		return haxe.Json.stringify(this);
	}
}

@:enum
abstract DataKey(String) from String to String {
	var FallbackUrl = "$fallback_url";
	var DesktopUrl = "$desktop_url";
	var IosUrl = "$ios_url";
	var IosHasAppUrl = "$ios_has_app_url";
	var AndroidUrl = "$android_url";
	var WindowsPhoneUrl = "$windows_phone_url";
	var BlackberryUrl = "$blackberry_url";
	var FireUrl = "$fire_url";
	var IosWechatUrl = "$ios_wechat_url";
	var AndroidWechatUrl = "$android_wechat_url";

	var AfterClickUrl = "$after_click_url";

	var WebOnly = "$web_only";

	var DeeplinkPath = "$deeplink_path";
	var AndroidDeeplinkPath = "$android_deeplink_path";
	var IosDeeplinkPath = "$ios_deeplink_path";
	var MatchDuration = "$match_duration";
	var AlwaysDeeplink = "$always_deeplink";
	var IosRedirectTimeout = "$ios_redirect_timeout";
	var AndroidRedirectTimeout = "$android_redirect_timeout";
	var OneTimeUse = "$one_time_use";
	var CustomSmsText = "$custom_sms_text";
	var MarketingTitle = "$marketing_title";

	var IosDeepview = "$ios_deepview";
	var AndroidDeepview = "$android_deepview";
	var DesktopDeepview = "$desktop_deepview";

	var PubliclyIndexable = "$publicly_indexable";
	var Keywords = "$keywords";
	var CanonicalIdentifier = "$canonical_identifier";
	var ExpDate = "$exp_date";
	var ContentType = "$content_type";

	var OgTitle = "$og_title";
	var OgDescription = "$og_description";
	var OgImageUrl = "$og_image_url";
	var OgImageWidth = "$og_image_width";
	var OgImageHeight = "$og_image_height";
	var OgVideo = "$og_video";
	var OgUrl = "$og_url";
	var OgType = "$og_type";
	var OgRedirect = "$og_redirect";
	var OgAppId = "$og_app_id";

	var TwitterCard = "$twitter_card";
	var TwitterTitle = "$twitter_title";
	var TwitterDescription = "$twitter_description";
	var TwitterImageUrl = "$twitter_image_url";
	var TwitterSite = "$twitter_site";
	var TwitterAppCountry = "$twitter_app_country";
	var TwitterPlayer = "$twitter_player";
	var TwitterPlayerWidth = "$twitter_player_width";
	var TwitterPlayerHeight = "$twitter_player_height";

	var CustomMetaTags = "$custom_meta_tags";
}