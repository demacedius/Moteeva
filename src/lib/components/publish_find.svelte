<script>
    import phone from "$lib/assets/images/phone.png";
</script>

<section class="py-[52px] font-archivo">
    <!-- Conteneur externe pour la position relative -->
    <div class="relative w-full max-w-[1101px] mx-auto lg:mt-20 overflow-visible">
        <!-- Image du téléphone, en arrière-plan sur desktop (z-10) -->
        <img
            src={phone}
            alt="Téléphone Moteeva"
            class="hidden lg:block absolute top-[-48px] right-[26.8px] h-[430px] w-auto z-30 pointer-events-none"
        />

        <!-- Carte de contenu, au premier plan (z-20), avec la bordure et le fond -->
        <div class="relative z-20 bg-slate-50 rounded-2xl border lg:h-[382px]">
            <div class="flex flex-col lg:flex-row lg:items-center lg:h-full overflow-hidden rounded-2xl">
                <!-- Colonne de gauche (texte) -->
                <div class="w-full p-8 lg:w-3/5 lg:p-12">
                    <h3
                        class="text-[28px] font-semibold tracking-tight text-gray-900 lg:text-4xl leading-[120%]"
                    >
                        Publiez et trouvez la session sportive idéale
                    </h3>
                    <div class="mt-6 space-y-4 text-base text-gray-700 lg:text-xl">
                        <p>
                            Grâce à une plateforme intuitive, chacun pourra <span
                                class="font-bold text-[#FF6933]">publier une session sportive</span
                            >
                            en indiquant des critères comme le sport, le lieu, la date, le niveau
                            souhaité, etc.
                        </p>
                        <p>
                            Ainsi tous les sportifs pourront publier leurs sessions ou
                            <span class="font-bold text-[#FF6933]"
                                >trouver la session qui leur convient exactement.</span
                            >
                            Plus besoin de pratiquer seul !
                        </p>
                    </div>
                </div>

                <!-- Colonne de droite (sert d'espaceur pour que le texte ne passe pas sous l'image) -->
                <div class="w-full lg:w-2/5"></div>
            </div>

            <!-- Image du téléphone sur mobile, en bas de la carte -->
            <div class="lg:hidden flex justify-center">
                <img
                    src={phone}
                    alt="Téléphone Moteeva"
                    class="h-[400px] w-auto"
                />
            </div>
        </div>
    </div>
</section>
