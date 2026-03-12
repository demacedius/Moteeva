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
            description: "Testez un sport en toute tranquillité.",
            hoverDescription: "Testez un sport en toute tranquillité.\n\nDes groupes bienveillants, sans pression, pensés pour celles et ceux qui veulent simplement essayer.",
            icon: decouverte,
            bgColor: "#50C878",
            textColor: "#FFFFFF"
        },
        {
            title: "Débutants Bienvenus",
            description: "Un rythme accessible, une ambiance encourageante.",
            hoverDescription: "Un rythme accessible, une ambiance encourageante.\n\nParfait pour progresser en douceur et pratiquer avec des personnes qui partagent votre état d'esprit.",
            icon: debutant,
            bgColor: "#6EC9E0",
            textColor: "#FFFFFF"
        },
        {
            title: "Sessions Performance",
            description: "Pour les sportifs qui aiment se dépasser.",
            hoverDescription: "Pour les sportifs qui aiment se dépasser.\n\nUn niveau homogène, une séance rythmée, et des partenaires motivés.",
            icon: performance,
            bgColor: "#FF6933",
            textColor: "#FFFFFF"
        },
        {
            title: "Sessions Mixtes ou Non Mixtes",
            description: "Choisissez le cadre qui vous met en confiance",
            hoverDescription: "Choisissez un cadre qui vous met en confiance : mixte, réservé aux femmes ou aux hommes selon vos préférences.",
            icon: mixte,
            bgColor: "#9B4DCA",
            textColor: "#FFFFFF"
        },
        {
            title: "Sessions Handi-Friendly",
            description: "Des sorties pensées pour inclure les personnes en situation de handicap.",
            hoverDescription: "Des sorties pensées pour inclure les personnes en situation de handicap : lieu adapté, description claire, et partenaires sensibilisés pour une pratique sereine.",
            icon: handicap,
            bgColor: "#7FC8A9",
            textColor: "#FFFFFF"
        },
        {
            title: "Sessions Senior-Friendly",
            description: "Marche douce, mobilité ou activités légères.",
            hoverDescription: "Marche douce, mobilité ou activités légères : des sessions conviviales, adaptées au rythme et aux besoins des seniors.",
            icon: senior,
            bgColor: "#8B7BC8",
            textColor: "#FFFFFF"
        },
        {
            title: "Eco session",
            description: "Bougez tout en agissant pour la planète",
            hoverDescription: "Bougez tout en agissant pour la planète : marche de ramassage, running propre, vélo éco-responsable... un sport qui a du sens.",
            icon: eco,
            bgColor: "#8BC34A",
            textColor: "#FFFFFF"
        },
        {
            title: "Sessions LGBT+ Friendly",
            description: "Sessions inclusives, ouvertes à tous, avec un public sensibilisé à la communauté LGBT+.",
            hoverDescription: "Des sessions inclusives, ouvertes à toutes les identités et orientations, dans des espaces bienveillants et respectueux de la communauté LGBT+ pour pratiquer en toute confiance.",
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
        <div class="flex flex-col items-center md:grid md:grid-cols-2 lg:grid-cols-3 gap-6 mb-6 w-full">
            {#each sessions.slice(0, 6) as session}
                <div
                    class="group rounded-xl py-4 px-4 sm:py-[21px] sm:px-[31px] flex items-center justify-center shadow-sm w-full md:max-w-[350px] h-auto min-h-[116px] hover:h-auto hover:items-start transition-all duration-300 ease-in-out cursor-pointer"
                    style="background-color: {session.bgColor};"
                >
                    <div class="flex flex-row gap-[10px] items-start w-full">
                        <div class="bg-white rounded-xl p-3 shrink-0 self-start group-hover:hidden">
                            <img src={session.icon} alt={session.title} class="w-8 h-8" />
                        </div>
                        <div class="flex flex-col flex-1">
                            <h3 class="font-archivo font-bold text-lg leading-[120%] mb-1" style="color: {session.textColor};">
                                {session.title}
                            </h3>
                            <p class="text-[14px] leading-[140%] group-hover:hidden" style="color: {session.textColor};">
                                {session.description}
                            </p>
                            <p class="text-[14px] leading-[140%] hidden group-hover:block whitespace-pre-line" style="color: {session.textColor};">
                                {session.hoverDescription}
                            </p>
                        </div>
                    </div>
                </div>
            {/each}
        </div>

        <!-- Les 2 dernières cards centrées -->
        <div class="flex flex-col items-center md:flex-row gap-6 justify-center mb-8 w-full">
            {#each sessions.slice(6) as session}
                <div
                    class="group rounded-xl py-4 px-4 sm:py-[21px] sm:px-[31px] flex items-center justify-center shadow-sm w-full md:max-w-[350px] h-auto min-h-[116px] hover:h-auto hover:items-start transition-all duration-300 ease-in-out cursor-pointer"
                    style="background-color: {session.bgColor};"
                >
                    <div class="flex flex-row gap-[10px] items-start w-full">
                        <div class="bg-white rounded-xl p-3 shrink-0 self-start group-hover:hidden">
                            <img src={session.icon} alt={session.title} class="w-8 h-8" />
                        </div>
                        <div class="flex flex-col flex-1">
                            <h3 class="font-archivo font-bold text-lg leading-[120%] mb-1" style="color: {session.textColor};">
                                {session.title}
                            </h3>
                            <p class="text-[14px] leading-[140%] group-hover:hidden" style="color: {session.textColor};">
                                {session.description}
                            </p>
                            <p class="text-[14px] leading-[140%] hidden group-hover:block whitespace-pre-line" style="color: {session.textColor};">
                                {session.hoverDescription}
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
