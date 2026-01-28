<script>
	import NavBar from "$lib/components/navBar.svelte";
	import Footer from "$lib/components/footer.svelte";
</script>

<main class="md:max-w-[1620px] mx-auto px-4 sm:px-[21px] bg-white">
	<NavBar />

	<div class="max-w-4xl mx-auto py-12 lg:py-20">
		<h1 class="font-archivo text-4xl lg:text-5xl font-semibold text-gray-900 mb-8">
			Politique de Confidentialité (RGPD)
		</h1>

		<div class="prose prose-lg max-w-none">
			<section class="mb-8">
				<h2 class="font-archivo text-2xl font-semibold text-gray-900 mb-4">Collecte des données</h2>
				<p class="text-gray-700 font-sans mb-4">Le site Moteeva peut collecter des données personnelles via :</p>
				<ul class="list-disc pl-6 space-y-2 text-gray-700 font-sans">
					<li>formulaire de contact</li>
					<li>inscription à la newsletter</li>
					<li>outils de mesure d'audience (Google Analytics)</li>
				</ul>
				<p class="text-gray-700 font-sans mt-4">
					Les données collectées peuvent inclure : prénom, adresse e-mail, données de navigation (adresse IP, pages visitées, durée de visite).
				</p>
			</section>

			<section class="mb-8">
				<h2 class="font-archivo text-2xl font-semibold text-gray-900 mb-4">Finalité de la collecte</h2>
				<p class="text-gray-700 font-sans mb-4">Les données sont collectées uniquement pour :</p>
				<ul class="list-disc pl-6 space-y-2 text-gray-700 font-sans">
					<li>répondre aux messages et demandes,</li>
					<li>informer sur l'avancée du projet,</li>
					<li>améliorer l'expérience utilisateur et les performances du site.</li>
				</ul>
			</section>

			<section class="mb-8">
				<h2 class="font-archivo text-2xl font-semibold text-gray-900 mb-4">Conservation des données</h2>
				<p class="text-gray-700 font-sans">
					Les données sont conservées pour une durée limitée et proportionnée à leur finalité, puis supprimées ou anonymisées.
				</p>
			</section>

			<section class="mb-8">
				<h2 class="font-archivo text-2xl font-semibold text-gray-900 mb-4">Droits des utilisateurs</h2>
				<p class="text-gray-700 font-sans mb-4">Conformément au RGPD, vous disposez des droits suivants :</p>
				<ul class="list-disc pl-6 space-y-2 text-gray-700 font-sans">
					<li>droit d'accès,</li>
					<li>droit de rectification,</li>
					<li>droit de suppression,</li>
					<li>droit d'opposition,</li>
					<li>droit à la portabilité.</li>
				</ul>
				<p class="text-gray-700 font-sans mt-4">
					Toute demande peut être adressée à : <a href="mailto:contact@moteeva.fr" class="text-[#F25E18] hover:underline">contact@moteeva.fr</a>
				</p>
			</section>

			<section class="mb-8">
				<h2 class="font-archivo text-2xl font-semibold text-gray-900 mb-4">Sécurité des données</h2>
				<p class="text-gray-700 font-sans">
					Moteeva met en œuvre des mesures techniques et organisationnelles pour protéger les données personnelles contre tout accès non autorisé.
				</p>
			</section>
		</div>
	</div>

	<Footer />
</main>
