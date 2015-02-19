{% for feed in feeds %}<link rel="alternate" type="application/rss+xml" title="{{ feed }} Podcast Feed" href="/{{ feed }}.xml" />
{% endfor %}
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta property="og:image" content="http://mikrowelle.me/res/mikrowelle_square.png" />

<link href="/res/static/podlove-web-player.css" rel="stylesheet" media="screen" type="text/css" />
<script src="/res/libs/html5shiv.js"></script>
<script src="/res/libs/jquery-1.10.1.min.js"></script>
<script src="/res/static/podlove-web-player.js"></script>
<script type="text/javascript"> // flattr
!function(){var a=document.createElement("script"),b=document.getElementsByTagName("script")[0];a.type="text/javascript",a.async=!0,a.src="//api.flattr.com/js/0.6/load.js?mode=auto&button=compact&popout=0",b.parentNode.insertBefore(a,b)}();
</script>