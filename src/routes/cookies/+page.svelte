<script>
	import NavBar from "$lib/components/navBar.svelte";
	import Footer from "$lib/components/footer.svelte";
</script>

<main class="md:max-w-[1620px] mx-auto px-4 sm:px-[21px] bg-white">
	<NavBar />

	<div class="max-w-4xl mx-auto py-12 lg:py-20">
		<h1 class="font-archivo text-4xl lg:text-5xl font-semibold text-gray-900 mb-8">
			Politique relative aux Cookies
		</h1>

		<div class="prose prose-lg max-w-none">
			<section class="mb-8">
				<h2 class="font-archivo text-2xl font-semibold text-gray-900 mb-4">Utilisation des cookies</h2>
				<p class="text-gray-700 font-sans mb-4">Le site utilise des cookies afin de :</p>
				<ul class="list-disc pl-6 space-y-2 text-gray-700 font-sans">
					<li>mesurer l'audience (Google Analytics),</li>
					<li>améliorer la navigation et l'expérience utilisateur.</li>
				</ul>
			</section>

			<section class="mb-8">
				<h2 class="font-archivo text-2xl font-semibold text-gray-900 mb-4">Consentement</h2>
				<p class="text-gray-700 font-sans">
					Lors de votre première visite, un bandeau vous informe de l'utilisation des cookies. Vous pouvez accepter, refuser ou paramétrer les cookies à tout moment.
				</p>
			</section>

			<section class="mb-8">
				<h2 class="font-archivo text-2xl font-semibold text-gray-900 mb-4">Désactivation</h2>
				<p class="text-gray-700 font-sans">
					Vous pouvez désactiver les cookies via les paramètres de votre navigateur.
				</p>
			</section>
		</div>
	</div>

	<Footer />
</main>
