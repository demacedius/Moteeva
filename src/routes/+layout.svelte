<script lang="ts">
	import '../app.css';

	let { children } = $props();
</script>

<svelte:head>
	<title>Moteeva - Ensemble on va plus loin</title>
	<meta name="description" content="Moteeva, l'application gratuite qui connecte les sportifs, non sportifs, handisportifs et séniors pour pratiquer, progresser et créer du lien social." />
	<link rel="icon" href="/favicon.svg" />

	<!-- Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=G-X8GBNBQDLC"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());
		gtag('config', 'G-X8GBNBQDLC');
	</script>
</svelte:head>

{@render children?.()}
