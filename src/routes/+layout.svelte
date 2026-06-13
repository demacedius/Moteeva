<script lang="ts">
	import { onMount } from 'svelte';
	import '../app.css';
	import { page } from '$app/state';

	let { children } = $props();

	onMount(() => {
		const link = document.createElement('link');
		link.rel = 'stylesheet';
		link.href = 'https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&family=Archivo+Narrow:wght@400;600;700&display=swap';
		document.head.appendChild(link);
	});
</script>

<svelte:head>
	<title>Moteeva - Ensemble on va plus loin</title>
	<meta name="description" content="Moteeva, l'application gratuite qui connecte les sportifs, non sportifs, handisportifs et séniors pour pratiquer, progresser et créer du lien social." />
	<link rel="icon" href="/favicon.svg" />
	<meta name="google-site-verification" content="SLOqZe7v96DHUGLubT5t-jdzv4MgIIvJ9nnfrrhdzbo" />

	<!-- Fonts : preconnect pour accélérer quand elles chargent (via onMount) -->
	<link rel="preconnect" href="https://fonts.googleapis.com" />
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="anonymous" />


	<!-- Open Graph -->
	<meta property="og:title" content="Moteeva - Ensemble on va plus loin" />
	<meta property="og:description" content="Moteeva, l'application gratuite qui connecte les sportifs, non sportifs, handisportifs et séniors pour pratiquer, progresser et créer du lien social." />
	<meta property="og:image" content="{page.url.origin}/og-logo.svg" />
	<meta property="og:type" content="website" />
	<meta property="og:url" content="{page.url.origin}" />

	<!-- Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=G-BWMR1XBMEHC"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());
		gtag('config', 'G-BWMR1XBMEH');
	</script>
</svelte:head>

{@render children?.()}
