<script>
	let email = '';
	let isSubmitting = false;
	let message = '';
	let messageType = ''; // 'success' or 'error'

	async function handleSubmit(e) {
		e.preventDefault();

		if (!email || !email.includes('@')) {
			message = 'Veuillez entrer une adresse email valide';
			messageType = 'error';
			return;
		}

		isSubmitting = true;

		// TODO: Intégrer ici votre service de newsletter (Mailchimp, Brevo, etc.)
		// Pour l'instant, on simule juste un succès après 1 seconde
		setTimeout(() => {
			message = 'Merci ! Ton inscription a bien été prise en compte.';
			messageType = 'success';
			email = '';
			isSubmitting = false;

			// Réinitialiser le message après 5 secondes
			setTimeout(() => {
				message = '';
				messageType = '';
			}, 5000);
		}, 1000);
	}
</script>

<section class="py-16 lg:py-20 bg-gradient-to-b from-white to-gray-50">
	<div class="max-w-4xl mx-auto px-4">
		<div class="bg-white rounded-3xl shadow-lg border border-gray-100 p-8 lg:p-12">
			<div class="text-center">
				<h3 class="font-archivo text-4xl lg:text-5xl font-semibold text-gray-900 mb-4">
					Reste informé(e) !
				</h3>
				<p class="font-sans text-lg lg:text-xl text-gray-600 mb-8 leading-relaxed">
					Inscris-toi à la newsletter pour suivre l'avancée de Moteeva, découvrir les prochaines fonctionnalités et faire partie des premiers utilisateurs.
				</p>

				<form on:submit={handleSubmit} class="max-w-lg mx-auto">
					<div class="flex flex-col sm:flex-row gap-3">
						<input
							type="email"
							bind:value={email}
							placeholder="ton@email.fr"
							disabled={isSubmitting}
							class="flex-1 px-6 py-4 rounded-xl border border-gray-300 focus:outline-none focus:ring-2 focus:ring-[#F25E18] focus:border-transparent text-base font-sans disabled:opacity-50 disabled:cursor-not-allowed"
							required
						/>
						<button
							type="submit"
							disabled={isSubmitting}
							class="bg-[#F25E18] hover:bg-[#e54e0f] text-white font-sans font-semibold px-8 py-4 rounded-xl transition-colors disabled:opacity-50 disabled:cursor-not-allowed disabled:hover:bg-[#F25E18] text-base lg:text-lg shadow-lg"
						>
							{isSubmitting ? 'Inscription...' : "S'inscrire"}
						</button>
					</div>
				</form>

				{#if message}
					<div class="mt-4 p-4 rounded-xl {messageType === 'success' ? 'bg-green-50 text-green-700' : 'bg-red-50 text-red-700'} font-sans">
						{message}
					</div>
				{/if}

				<p class="mt-6 text-sm text-gray-500 font-sans">
					Nous respectons ta vie privée. Pas de spam, juste des infos utiles sur Moteeva.
				</p>
			</div>
		</div>
	</div>
</section>
