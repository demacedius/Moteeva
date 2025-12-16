<script>
    import Tag from "$lib/components/tag.svelte";
    import tennisWomen from "$lib/assets/images/teniswomen.png";
    import logo from "$lib/assets/images/Group 51.svg";
    import vector41 from "$lib/assets/images/Vector 41.png";
    import vector42 from "$lib/assets/images/Vector 42.png";
    import vector43 from "$lib/assets/images/Vector 43.png";
    import vector44 from "$lib/assets/images/Vector 44.png";
    import vector45 from "$lib/assets/images/Vector 45.png";
    import vector46 from "$lib/assets/images/Vector 46.png";
    const badges = [
        {
            text: "Rejoignez des séances variées et progressez plus vite",
        },
        {
            text: "Allez plus loin dans vos objectifs",
        },
        {
            text: "Découvrez de nouveaux sports",
        },
    ];

    const cards = [
        {
            title: "Créer du lien social",
            description: "Rencontrez de nouveaux partenaires sportifs et nouez des amitiés.",
            icon: "heart",
        },
        {
            title: "Une progression accélérée",
            description: "Une évolution rapide vers de meilleurs résultats.",
            icon: "chart",
        },
        {
            title: "Plus d'excuses pour ne pas pratiquer",
            description: "Trouvez toujours quelqu'un de disponible pour partager une séance sportive.",
            icon: "check",
        },
        {
            title: "Découvrez de nouveaux sports",
            description: "",
            icon: "star",
        },
    ];
</script>

<section class="py-[52px] font-archivo">
    <!-- Conteneur externe pour la position relative -->
    <div class="relative max-w-6xl mx-auto lg:mt-20">
        <!-- Image de la joueuse de tennis, en arrière-plan (z-10) -->
        <img
            src={tennisWomen}
            alt="Joueuse de tennis"
            class="hidden lg:block absolute bottom-0 right-0 h-[402px] w-auto z-30"
        />

        <!-- Carte de contenu, au premier plan (z-20), avec la bordure et le fond -->
        <div class="relative z-20 bg-slate-50 rounded-2xl border">
            <div class="flex flex-col lg:flex-row lg:items-center">
                <!-- Colonne de gauche (texte) -->
                <div class="w-full p-8 lg:w-3/5 lg:p-12">
                    <h3
                        class="text-3xl font-semibold tracking-tight text-gray-900 lg:text-4xl"
                    >
                        Publiez et trouvez la session sportive idéale
                    </h3>
                    <div class="mt-6 space-y-4 text-lg text-gray-700 lg:text-xl">
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
        </div>
    </div>
    <h3 class="text-5xl text-center mt-[76px]">Pourquoi choisir Moteeva ?</h3>
    <p
        class="text-lg font-normal leading-[120%] tracking-[-2%] font-sans text-[#6C727F] text-center mt-[9px]"
    >
        Découvrez tous les avantages de rejoindre notre communauté sportive
    </p>

    <!-- Mobile: affichage en colonne -->
    <div class="flex flex-col gap-5 mt-[47px] lg:hidden">
        {#each badges as badge}
            <Tag tag={badge.text} />
        {/each}
    </div>

    <!-- Desktop: disposition avec lignes pointillées -->
    <div class="hidden lg:block relative mt-8 mb-20 mx-auto max-w-[1400px] w-full" style="height: 700px;">
        <!-- Logo central dans carré blanc (z-index le plus élevé) -->
        <div class="absolute top-1/2 left-1/2 transform -translate-x-1/2 -translate-y-1/2 z-20">
            <div class="relative flex items-center justify-center rotate-[0.731deg]">
                <div class="w-[122px] h-[122px] rounded-[30px] bg-white border-[1.7px] border-[#F1F1F1] shadow-[0px_0px_250px_0px_rgba(0,0,0,0.25)] flex items-center justify-center">
                    <img src={logo} alt="Moteeva Logo" class="w-[69px] h-auto" />
                </div>
            </div>
        </div>

        <!-- Chemins courbes en PNG (z-index: 5 entre le fond et les badges/cartes) -->
        <!-- Vector 41: du logo central vers badge top "Rejoignez des séances" -->
        <img src={vector41} alt="" class="absolute" style="top: 32%; left: 59%; transform: translateX(-50%); width: 168px; height: 46px; z-index: 5; pointer-events: none; " />

        <!-- Vector 46: du logo central vers carte top-left "Créer du lien social" -->
        <img src={vector46} alt="" class="absolute" style="top: 28%; left: 35%; width: 136px; height: 80px; z-index: 5; pointer-events: none; " />

        <!-- Vector 42: du logo central vers carte top-right "Une progression accélérée" -->
        <img src={vector42} alt="" class="absolute" style="top: 50%; right: 28%; width: 200px; height: 20px; z-index: 5; pointer-events: none; " />

        <!-- Vector 45: du logo central vers badge left "Allez plus loin" -->
        <img src={vector45} alt="" class="absolute" style="top: 52%; left: 28%; width: 212px; height: 121px; z-index: 5; pointer-events: none; " />

        <!-- Vector 43: du logo central vers badge right "Découvrez de nouveaux sports" -->
        <img src={vector43} alt="" class="absolute" style="top: 65%; right: 35%; width: 164px; height: 149px; z-index: 5; pointer-events: none; " />

        <!-- Vector 44: du logo central vers carte bottom "Plus d'excuses" -->
        <img src={vector44} alt="" class="absolute" style="top: 65%; left: 46%; transform: translateX(-50%); width: 84px; height: 79px; z-index: 5; pointer-events: none;" />

        <!-- Badge orange: "Rejoignez des séances variées..." (en haut) -->
        <div class="absolute top-[22%] left-[60%] px-2.5 transform -translate-x-1/2 rotate-[-1.343deg] z-10">
            <div class="bg-[rgba(242,94,24,0.09)] border border-[rgba(242,94,24,0.25)] rounded-[19px] px-5 py-3 shadow-[0px_0px_86.2px_0px_rgba(242,94,24,0.09)]">
                <p class="text-[#F25E18] font-archivo text-[20px] font-bold leading-7 text-center whitespace-nowrap">
                    {badges[0].text}
                </p>
            </div>
        </div>

        <!-- Badge orange: "Allez plus loin dans vos objectifs" (à gauche) -->
        <div class="absolute top-[70%] left-14 transform -translate-y-1/2 rotate-[-1.539deg] z-10">
            <div class="bg-[rgba(242,94,24,0.09)] border border-[rgba(242,94,24,0.25)] rounded-[19px] px-5 py-3 shadow-[0px_0px_86.2px_0px_rgba(242,94,24,0.09)]">
                <p class="text-[#F25E18] font-archivo text-[20px] font-bold leading-7 text-center whitespace-nowrap">
                    {badges[1].text}
                </p>
            </div>
        </div>

        <!-- Badge orange: "Découvrez de nouveaux sports" (à droite) -->
        <div class="absolute top-[94%] right-82 transform -translate-y-1/2 rotate-[1.064deg] z-10">
            <div class="bg-[rgba(242,94,24,0.09)] border border-[rgba(242,94,24,0.25)] rounded-[19px] px-5 py-3 shadow-[0px_0px_86.2px_0px_rgba(242,94,24,0.09)]">
                <p class="text-[#F25E18] font-archivo text-[20px] font-bold leading-7 text-center whitespace-nowrap">
                    {badges[2].text}
                </p>
            </div>
        </div>

        <!-- Carte 1: En haut à gauche - "Créer du lien social" -->
        <div class="absolute top-[15%] left-[12%] w-[284px] z-15 rotate-[2.447deg]">
            <div class="bg-white border border-[#F25E18] rounded-3xl shadow-[0px_4px_20px_-4px_rgba(34,37,42,0.08)] px-[18px] py-[26px]">
                <div class="flex flex-col items-center text-center gap-[13px]">
                    <div class="w-20 h-20 rounded-full bg-[rgba(255,105,51,0.1)] flex items-center justify-center">
                        <svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M34.73 7.68a9.17 9.17 0 0 0-12.97 0L20 9.45l-1.76-1.77a9.17 9.17 0 0 0-12.97 12.97l1.76 1.77L20 35.38l13.97-13.96 1.76-1.77a9.17 9.17 0 0 0 0-12.97z" stroke="#FF6933" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        </svg>
                    </div>
                    <div>
                        <h4 class="font-poppins text-[16px] font-semibold text-black mb-2 leading-[1.2] tracking-[0.32px]">
                            {cards[0].title}
                        </h4>
                        <p class="font-poppins text-[14px] font-normal text-black leading-[1.2] tracking-[-0.28px]">
                            {cards[0].description}
                        </p>
                    </div>
                </div>
            </div>
        </div>

        <!-- Carte 2: En haut à droite - "Une progression accélérée" -->
        <div class="absolute top-[40%] right-[6%] w-[284px] z-15 rotate-[2.732deg]">
            <div class="bg-white border border-[#F25E18] rounded-3xl shadow-[0px_4px_20px_-4px_rgba(34,37,42,0.08)] px-[18px] py-[26px]">
                <div class="flex flex-col items-center text-center gap-[13px]">
                    <div class="w-20 h-20 rounded-full bg-[rgba(255,105,51,0.1)] flex items-center justify-center">
                        <svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M5 5v30h30" stroke="#FF6933" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                            <path d="M30.83 15l-8.33 8.33-5-5-6.67 6.67" stroke="#FF6933" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                            <path d="M25 15h5.83v5.83" stroke="#FF6933" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        </svg>
                    </div>
                    <div>
                        <h4 class="font-poppins text-[16px] font-semibold text-black mb-2 leading-[1.2] tracking-[0.32px]">
                            {cards[1].title}
                        </h4>
                        <p class="font-poppins text-[14px] font-normal text-black leading-[1.2] tracking-[-0.28px]">
                            {cards[1].description}
                        </p>
                    </div>
                </div>
            </div>
        </div>

        <!-- Carte 3: En bas au centre - "Plus d'excuses pour ne pas pratiquer" -->
        <div class="absolute -bottom-[10%] left-[40%] transform -translate-x-1/2 rotate-[-2.907deg] w-[284px] z-15">
            <div class="bg-white border border-[#F25E18] rounded-3xl shadow-[0px_4px_20px_-4px_rgba(34,37,42,0.08)] px-[18px] py-[26px]">
                <div class="flex flex-col items-center text-center gap-[13px]">
                    <div class="w-20 h-20 rounded-full bg-[rgba(255,105,51,0.1)] flex items-center justify-center">
                        <svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <circle cx="20" cy="20" r="16.67" stroke="#FF6933" stroke-width="2"/>
                            <path d="M15 20l3.33 3.33 6.67-6.66" stroke="#FF6933" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        </svg>
                    </div>
                    <div>
                        <h4 class="font-poppins text-[16px] font-semibold text-black mb-2 leading-[1.2] tracking-[0.32px]">
                            {cards[2].title}
                        </h4>
                        <p class="font-poppins text-[14px] font-normal text-black leading-[1.2] tracking-[-0.28px]">
                            {cards[2].description}
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
