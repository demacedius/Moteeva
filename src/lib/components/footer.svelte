<script>
	import logoFooter from '$lib/assets/images/logoFooter.png';
	import Icon from '@iconify/svelte';
</script>

<footer class="bg-[#100601] text-white relative left-1/2 right-1/2 -ml-[50vw] -mr-[50vw] w-screen overflow-hidden">
	<div class="container mx-auto pt-7 px-8 lg:pt-12 lg:max-w-6xl lg:px-8">
		<div>
			<h3
				class="font-semibold font-sans text-[7.53px] leading-[120%] tracking-[2%] text-center mb-4 lg:text-sm lg:mb-6"
			>
				Suis-nous sur les réseaux !
			</h3>
			<div class="flex space-x-4 items-center justify-center lg:space-x-6 mb-8 lg:mb-12">
				<a href="#" class="text-gray-400 hover:text-white transition-colors">
					<Icon icon="mdi:facebook" width="24" class="lg:w-7 lg:h-7" />
				</a>
				<a href="#" class="text-gray-400 hover:text-white transition-colors">
					<Icon icon="mdi:instagram" width="24" class="lg:w-7 lg:h-7" />
				</a>
				<a href="#" class="text-gray-400 hover:text-white transition-colors">
					<Icon icon="mdi:youtube" width="24" class="lg:w-7 lg:h-7" />
				</a>
			</div>
		</div>

		<!-- Mobile version -->
		<div class="flex flex-col lg:hidden items-center">
			<img src={logoFooter} alt="Moteeva Logo" class="h-12.5 w-auto mb-4" />
			<div class="flex flex-row items-center justify-center">
				<ul class="space-y-2 flex gap-[9px]">
					<li>
						<a href="#" class="text-[#9CA3B0] font-inter font-normal text-[5px]"
							>Politique de confidentialité</a
						>
					</li>
					<li>
						<a href="#" class="text-[#9CA3B0] font-inter font-normal text-[5px]"
							>Conditions d'utilisation</a
						>
					</li>
					<li>
						<a href="#" class="text-[#9CA3B0] font-inter font-normal text-[5px]"
							>Cookies</a
						>
					</li>
				</ul>
			</div>
		</div>

		<!-- Desktop version -->
		<div class="hidden lg:flex lg:flex-col lg:items-center lg:mb-12">
			<img src={logoFooter} alt="Moteeva Logo" class="h-32 w-auto mb-12" />
			<div class="flex items-center justify-between w-full">
				<p class="text-[#9CA3B0] text-sm">
					© {new Date().getFullYear()} Moteeva. Tous droits réservés.
				</p>
				<ul class="flex gap-8">
					<li>
						<a href="#" class="text-[#9CA3B0] hover:text-white transition-colors text-sm"
							>Politique de confidentialité</a
						>
					</li>
					<li>
						<a href="#" class="text-[#9CA3B0] hover:text-white transition-colors text-sm"
							>Conditions d'utilisation</a
						>
					</li>
					<li>
						<a href="#" class="text-[#9CA3B0] hover:text-white transition-colors text-sm"
							>Cookies</a
						>
					</li>
				</ul>
			</div>
		</div>
	</div>

	<!-- Copyright mobile only -->
	<div class="mt-8 py-4 lg:hidden">
		<p class="text-center text-gray-500 text-sm">
			© {new Date().getFullYear()} Moteeva. Tous droits réservés.
		</p>
	</div>
</footer>