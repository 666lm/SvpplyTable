SvpplyTable
===========

SvpplyTable is a demo to realize expandable and collapsable menu animation, Like Svpply app.

## How to Use

You can replace categories.json with your content. And you should follow categories.json format.

## categories.json Format Sample

{
	"meta":{
		"status":200,
		"msg":"OK",
		"time":1335541016
	},
	"response":{
		"categories":[
		{
			"name":"All Products",
			"url":"https:\/\/api.svpply.com\/v1\/shop.json",
			"text_color":"#000000",
			"border_color":"#000000",
			"children":[
			{
				"name":"Men\u2019s",
				"url":"https:\/\/api.svpply.com\/v1\/shop\/mens.json",
				"text_color":"#FF5B54",
				"border_color":"#FFDEDD",
				"children":[
				{
					"name":"Clothing",
					"url":"https:\/\/api.svpply.com\/v1\/shop\/mens\/clothing.json",
					"text_color":"#FF5B54",
					"border_color":"#FFDEDD"
				}			
				]
			}
			]
		}
		]
	}
}

## Sample Screenshot
![](http://publicopensource.qiniudn.com/STable.gif)

## Contact

Email: liuminqian0211@gmail.com

## Conclude

This is my first opensource code, so I need your help to improve this repo.

If you have any advice or problem, please contact me.

##License

SvpplyTable are available under the MIT license. See the LICENSE file for more info.
