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
		<article>
			<h3>{{ post.title }}</h3>
			{{ post.subtitle }}
			Dauer: {{ post.humanduration }} Stunden
			<div class="actions">Veröffentlicht am: {{ post.humandate }}, <a href="{{ post.episode }}.html">Direktlink zur Episode</a>, Download: <a href="{{ settings.audio_base_url }}{{ post.filename }}.mp3">mp3</a>, <a href="{{ settings.audio_base_url }}{{ post.filename }}.opus">opus</a>, <a href="{{ settings.audio_base_url }}{{ post.filename }}.m4a">mp4</a></div>
		</article>
		{% endfor %}
	</section>
</body>

</html>
