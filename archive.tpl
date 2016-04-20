<!DOCTYPE html>
<html lang="de">
<head>
	<meta charset="utf-8" />
	<title>Mikrowelle | µ~ | Technikpodcast</title>
	{% include 'head.tpl' %}
	<link rel="stylesheet" type="text/css" href="/style.css" />
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
			Dauer: {{ post.humanduration }} h
			<div class="actions">
				Veröffentlicht am: {{ post.humandate }},
				<a href="{{ post.episode }}.html">Direktlink</a>
				Download:
					{% for extension, mime in formats.items() %}
						<a href="{{ settings.audio_base_url }}{{ post.filename }}.{{ extension }}">{{ extension }}</a>
					{% endfor %}
			</div>
		</article>
		{% endfor %}
	</section>
</body>

</html>
