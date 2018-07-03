<article>
	<h3>{{ post.title }}</h3>

	<audio preload="none" controls="controls" data-podlove-web-player-source="player_{{post.episode}}.html">
		{% for extension, mime in formats.iteritems() %}
			<source src="{{ settings.audio_base_url }}{{ post.filename }}.{{ extension }}" type="{{ mime }}">
		{% endfor %}
	</audio>

	{% if index_page %}
		<a href="{{ post.episode }}.html">Vollständige Episodenansicht mit Shownotes</a>
	{% else %}
		<section>
			{{ post.content }}
		</section>
	{% endif %}

	<div class="actions">
		Veröffentlicht am: {{ post.humandate }},
		<a href="{{ post.episode }}.html">Direktlink</a>
		Download:
		{% for extension, mime in formats.iteritems() %}
			<a href="{{ settings.audio_base_url }}{{ post.filename }}.{{ extension }}">{{ extension }}</a>
		{% endfor %}
		</div>
</article>
