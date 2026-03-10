<script>
    import decouverte from "$lib/assets/images/decouverte.png";
    import debutant from "$lib/assets/images/debutant.png";
    import performance from "$lib/assets/images/session.png";
    import mixte from "$lib/assets/images/mixte.png";
    import handicap from "$lib/assets/images/handicap.png";
    import senior from "$lib/assets/images/senior.png";
    import eco from "$lib/assets/images/eco.png";
    import lgbt from "$lib/assets/images/LGBT.png";

    const sessions = [
        {
            title: "Sessions Découverte",
            description: "Testez un sport qui vous plaît, sans prise de tête",
            icon: decouverte,
            bgColor: "#50C878",
            textColor: "#FFFFFF"
        },
        {
            title: "Débutants Bienvenus",
            description: "Progressez sans stress dans une ambiance inclusive",
            icon: debutant,
            bgColor: "#6EC9E0",
            textColor: "#FFFFFF"
        },
        {
            title: "Sessions Performance",
            description: "Poussez vos limites lors de sessions intenses",
            icon: performance,
            bgColor: "#FF6933",
            textColor: "#FFFFFF"
        },
        {
            title: "Sessions Kids ou Non Mixte",
            description: "Choisissez le cadre qui vous met en confiance",
            icon: mixte,
            bgColor: "#9B4DCA",
            textColor: "#FFFFFF"
        },
        {
            title: "Sessions Handi-Friendly",
            description: "Un cadre adapté pour une pratique en toute sérénité",
            icon: handicap,
            bgColor: "#7FC8A9",
            textColor: "#FFFFFF"
        },
        {
            title: "Sessions Senior-Friendly",
            description: "Maintenez-vous en forme à votre propre rythme",
            icon: senior,
            bgColor: "#8B7BC8",
            textColor: "#FFFFFF"
        },
        {
            title: "Eco session",
            description: "Pratiquez tout en respectant notre planète",
            icon: eco,
            bgColor: "#8BC34A",
            textColor: "#FFFFFF"
        },
        {
            title: "Sessions LGBT+ Friendly",
            description: "Sportez dans un espace safe et inclusif pour la communauté LGBT+",
            icon: lgbt,
            bgColor: "#E91E63",
            textColor: "#FFFFFF"
        }
    ];
</script>

<section class="py-16 lg:py-20 bg-[#FBF9F9] w-full">
    <div class="max-w-[1200px] mx-auto px-4 sm:px-8">
        <!-- Titre -->
        <div class="text-center mb-12">
            <p class="text-sm text-[#FF6933] font-semibold mb-3 uppercase tracking-wide">Types de sessions</p>
            <h2 class="text-[28px] lg:text-5xl font-archivo font-semibold leading-[120%]">
                Choisissez exactement l'expérience <span class="text-[#FF6933]">que vous voulez vivre</span>
            </h2>
        </div>

        <!-- Grille des cartes -->
        <!-- Les 6 premières cards -->
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mb-6">
            {#each sessions.slice(0, 6) as session}
                <div
                    class="rounded-xl py-[21px] px-[31px] flex items-center justify-center shadow-sm w-full lg:w-[350px] h-[116px]"
                    style="background-color: {session.bgColor};"
                >
                    <div class="flex flex-row gap-[10px] items-center w-full">
                        <div class="bg-white rounded-xl p-3 shrink-0">
                            <img src={session.icon} alt={session.title} class="w-8 h-8" />
                        </div>
                        <div class="flex flex-col">
                            <h3 class="font-archivo font-bold text-lg leading-[120%]" style="color: {session.textColor};">
                                {session.title}
                            </h3>
                            <p class="text-[14px] leading-[140%]" style="color: {session.textColor};">
                                {session.description}
                            </p>
                        </div>
                    </div>
                </div>
            {/each}
        </div>

        <!-- Les 2 dernières cards centrées -->
        <div class="flex flex-col md:flex-row gap-6 justify-center mb-8">
            {#each sessions.slice(6) as session}
                <div
                    class="rounded-xl py-[21px] px-[31px] flex items-center justify-center shadow-sm w-full lg:w-[350px] h-[116px]"
                    style="background-color: {session.bgColor};"
                >
                    <div class="flex flex-row gap-[10px] items-center w-full">
                        <div class="bg-white rounded-xl p-3 shrink-0">
                            <img src={session.icon} alt={session.title} class="w-8 h-8" />
                        </div>
                        <div class="flex flex-col">
                            <h3 class="font-archivo font-bold text-lg leading-[120%]" style="color: {session.textColor};">
                                {session.title}
                            </h3>
                            <p class="text-[14px] leading-[140%]" style="color: {session.textColor};">
                                {session.description}
                            </p>
                        </div>
                    </div>
                </div>
            {/each}
        </div>

        <!-- Texte et bouton -->
        <div class="text-center px-4">
            <p class="text-base mb-6 leading-[140%]">
                Avec Moteeva, vous pouvez <span class="font-bold text-[#FF6933]">publier vos sessions</span> ou <span class="font-bold text-[#FF6933]">trouver exactement celles qui vous correspondent.</span>
            </p>
            <a href="https://gofund.me/6351004e5" target="_blank" rel="noopener noreferrer" class="bg-[#FF6933] text-white font-sans font-semibold text-base px-8 py-3 rounded-lg inline-flex items-center justify-center gap-2 hover:opacity-90 transition-all duration-300 ease-in-out">
                <svg width="20" height="20" viewBox="0 0 20 20" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                    <path d="M15.83 7.5L10 1.67L4.17 7.5M10 18.33V2.5" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" fill="none"/>
                </svg>
                Soutenir le projet
            </a>
        </div>
    </div>
</section>
