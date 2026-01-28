<script>
	import NavBar from "$lib/components/navBar.svelte";
	import Footer from "$lib/components/footer.svelte";
</script>

<main class="md:max-w-[1620px] mx-auto px-4 sm:px-[21px] bg-white">
	<NavBar />

	<div class="max-w-4xl mx-auto py-12 lg:py-20">
		<h1 class="font-archivo text-4xl lg:text-5xl font-semibold text-gray-900 mb-8">
			Mentions Légales
		</h1>

		<div class="prose prose-lg max-w-none">
			<section class="mb-8">
				<h2 class="font-archivo text-2xl font-semibold text-gray-900 mb-4">Éditeur du site</h2>
				<ul class="space-y-2 text-gray-700 font-sans">
					<li><strong>Nom du projet :</strong> Moteeva</li>
					<li><strong>Responsable de publication :</strong> Téva Philippon</li>
					<li><strong>Adresse e-mail :</strong> <a href="mailto:contact@moteeva.fr" class="text-[#F25E18] hover:underline">contact@moteeva.fr</a></li>
				</ul>
			</section>

			<section class="mb-8">
				<h2 class="font-archivo text-2xl font-semibold text-gray-900 mb-4">Développement</h2>
				<p class="text-gray-700 font-sans">
					<strong>Développeur :</strong> Anthony De Macedo El
				</p>
			</section>

			<section class="mb-8">
				<h2 class="font-archivo text-2xl font-semibold text-gray-900 mb-4">Direction artistique / graphisme</h2>
				<p class="text-gray-700 font-sans">
					<strong>Graphiste :</strong> Tristan Noëllec
				</p>
			</section>

			<section class="mb-8">
				<h2 class="font-archivo text-2xl font-semibold text-gray-900 mb-4">Hébergement</h2>
				<p class="text-gray-700 font-sans mb-2">Le site est hébergé par :</p>
				<div class="text-gray-700 font-sans">
					<p><strong>Infomaniak Network SA</strong></p>
					<p>Rue Eugène-Marziano 25</p>
					<p>1227 Les Acacias – Genève – Suisse</p>
					<p><a href="https://www.infomaniak.com" target="_blank" rel="noopener noreferrer" class="text-[#F25E18] hover:underline">www.infomaniak.com</a></p>
				</div>
			</section>

			<section class="mb-8">
				<h2 class="font-archivo text-2xl font-semibold text-gray-900 mb-4">Responsabilité</h2>
				<p class="text-gray-700 font-sans">
					Le site Moteeva a pour vocation de présenter un projet d'application de mise en relation sportive. L'éditeur ne saurait être tenu responsable de l'usage fait des informations présentes sur le site.
				</p>
			</section>

			<section class="mb-8">
				<h2 class="font-archivo text-2xl font-semibold text-gray-900 mb-4">Propriété intellectuelle</h2>
				<p class="text-gray-700 font-sans">
					L'ensemble du contenu du site (textes, visuels, logo, charte graphique) est la propriété exclusive de Moteeva, sauf mention contraire. Toute reproduction ou utilisation sans autorisation est interdite.
				</p>
			</section>
		</div>
	</div>

	<Footer />
</main>
