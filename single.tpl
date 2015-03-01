<!DOCTYPE html>
<html lang="de">
<head>
	<meta charset="utf-8" />
	<title>{{ post.title }} | Mikrowelle | µ~ | Technikpodcast</title>
	<link rel="stylesheet" href="/style.css" />
	{% include 'head.tpl' with context %}
</head>

<body>
	<header>
		<a href="http://mikrowelle.me/">
			<img src="/res/header.svg" />
		</a>
	</header>

	<section id="maincontent">
		<div id="backlink"><a href="/">zurück zur Übersicht</a></div>

		{% include 'post.tpl' with context %}

		{% include 'meta_block.tpl' %}
	</section>

</body>

</html>
