<!DOCTYPE html>
<html lang="de">
<head>
	<meta charset="utf-8" />
	<title>Mikrowelle | µ~ | Technikpodcast</title>
	{% include 'head.tpl' with context %}
	<link rel="stylesheet" type="text/css" href="res/style.css" />
</head>

<body>
	<header>
		<a href="http://mikrowelle.me/">
			<img src="/res/header.svg" />
		</a>
	</header>

	<section id="maincontent">
		{% include 'meta_block.tpl' %}

		{% for post in posts %}
		{% include 'post.tpl' with context %}
		{% endfor %}

		{% if next %}
		<div id="prev_episodes">
			<a href="/index.{{ next }}.html">ältere Episoden</a>
		</div>
		{% endif %}
	</section>
</body>

</html>
