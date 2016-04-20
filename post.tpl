<article>
	<h3>{{ post.title }}</h3>

	<audio preload="none" controls="controls" data-podlove-web-player-source="player_{{post.episode}}.html">
		{% for extension, mime in formats.iteritems() %}
			<source src="{{ settings.audio_base_url }}{{ post.filename }}.{{ extension }}" type="{{ mime }}"</source>
		{% endfor %}
	</audio>

	{% if index_page %}
		<a href="{{ post.episode }}.html">Vollständige Episodenansicht mit Shownotes</a>
	{% else %}
		<section>
			{{ post.content }}
		</section>
	{% endif %}

	<div style="margin-top:1em;">
		<a href="{{ settings.base_url }}{{ post.episode }}.html" title="{{ post.title }}" data-flattr-uid="thomersch" data-flattr-tags="podcast" data-flattr-category="audio" class="FlattrButton" style="display:none" >{{ post.subtitle }}</a>
	</div>

	<div class="actions">
		Veröffentlicht am: {{ post.humandate }},
		<a href="{{ post.episode }}.html">Direktlink</a>
		Download:
		{% for extension, mime in formats.iteritems() %}
			<a href="{{ settings.audio_base_url }}{{ post.filename }}.{{ extension }}">{{ extension }}</a>
		{% endfor %}
		</div>
</article>
