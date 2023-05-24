class_name RpgWebsite
extends CanvasLayer


onready var rpg_title_icon = $Fill/Top/RpgTitleIcon

var button_shop: TextureButton
var button_blog: TextureButton
var button_video: TextureButton
var button_faq: TextureButton 
var button_about: TextureButton
var button_contact: TextureButton

var button_facebook: TextureButton
var button_twitter: TextureButton
var button_youtube: TextureButton
var button_insta: TextureButton
var button_tiktok: TextureButton


func _ready():
	rpg_title_icon.connect("pressed", self, "rpg_title_icon_pressed")

	button_shop = find_node("ButtonShop")
	button_blog = find_node("ButtonBlog")
	button_video = find_node("ButtonVideo")
	button_faq = find_node("ButtonFaq")
	button_about = find_node("ButtonAbout")
	button_contact = find_node("ButtonContact")

	button_facebook = find_node("ButtonFacebook")
	button_twitter = find_node("ButtonTwitter")
	button_youtube = find_node("ButtonYoutube")
	button_insta = find_node("ButtonInsta")
	button_tiktok = find_node("ButtonTikTok")


	button_shop.connect("pressed", self, "button_shop_pressed")
	button_blog.connect("pressed", self, "button_blog_pressed")
	button_video.connect("pressed", self, "button_video_pressed")
	button_faq.connect("pressed", self, "button_faq_pressed")
	button_about.connect("pressed", self, "button_about_pressed")
	button_contact.connect("pressed", self, "button_contact_pressed")
	button_youtube.connect("pressed", self, "button_youtube_pressed")
	button_insta.connect("pressed", self, "button_insta_pressed")
	button_tiktok.connect("pressed", self, "button_tiktok_pressed")



func rpg_title_icon_pressed():
	get_tree().change_scene("res://RpgWebsiteMainPage.tscn")

func button_shop_pressed():
	get_tree().change_scene("res://RpgWebsiteShop.tscn")

func button_blog_pressed():
	get_tree().change_scene("res://RpgWebsiteBlog.tscn")

func button_video_pressed():
	get_tree().change_scene("res://RpgWebsiteVideo.tscn")

func button_faq_pressed():
	get_tree().change_scene("res://RpgWebsiteFaq.tscn")

func button_about_pressed():
	get_tree().change_scene("res://RpgWebsiteAbout.tscn")
	
func button_contact_pressed():
	get_tree().change_scene("res://RpgWebsiteContact.tscn")


func button_youtube_pressed():
	OS.shell_open("https://www.youtube.com/@RPGAthletics")


func button_insta_pressed():
	OS.shell_open("https://www.instagram.com/RPGAthletics/")


func button_tiktok_pressed():
	OS.shell_open("https://www.tiktok.com/@rpgathletics")