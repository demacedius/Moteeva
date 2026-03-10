<script>
    import Tag from "$lib/components/tag.svelte";
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

<section class="py-[52px] font-archivo px-4">
    <h3 class="text-[32px] lg:text-5xl text-center mt-[76px] leading-[120%]">Pourquoi choisir Moteeva ?</h3>
    <p
        class="text-base lg:text-lg font-normal leading-[120%] tracking-[-2%] font-sans text-[#6C727F] text-center mt-[9px]"
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
    <div class="hidden lg:block relative mt-8 mb-20 mx-auto lg:max-w-[1000px] xl:max-w-[1200px] 2xl:max-w-[1400px] w-full lg:h-[550px] xl:h-[600px] 2xl:h-[700px]">
        <!-- Logo central dans carré blanc (z-index le plus élevé) -->
        <div class="absolute top-1/2 left-1/2 transform -translate-x-1/2 -translate-y-1/2 z-20">
            <div class="relative flex items-center justify-center rotate-[0.731deg]">
                <div class="lg:w-[90px] lg:h-[90px] xl:w-[105px] xl:h-[105px] 2xl:w-[122px] 2xl:h-[122px] rounded-[30px] bg-white border-[1.7px] border-[#F1F1F1] shadow-[0px_0px_250px_0px_rgba(0,0,0,0.25)] flex items-center justify-center">
                    <img src={logo} alt="Moteeva Logo" class="lg:w-[50px] xl:w-[60px] 2xl:w-[69px] h-auto" />
                </div>
            </div>
        </div>

        <!-- Chemins courbes en PNG (z-index: 5 entre le fond et les badges/cartes) -->
        <!-- Vector 41: du logo central vers badge top "Rejoignez des séances" -->
        <img src={vector41} alt="" class="absolute lg:w-[130px] lg:h-[36px] xl:w-[150px] xl:h-[41px] 2xl:w-[168px] 2xl:h-[46px]" style="top: 32%; left: 59%; transform: translateX(-50%); z-index: 5; pointer-events: none; " />

        <!-- Vector 46: du logo central vers carte top-left "Créer du lien social" -->
        <img src={vector46} alt="" class="absolute lg:w-[106px] lg:h-[62px] xl:w-[120px] xl:h-[70px] 2xl:w-[136px] 2xl:h-[80px]" style="top: 28%; left: 35%; z-index: 5; pointer-events: none; " />

        <!-- Vector 42: du logo central vers carte top-right "Une progression accélérée" -->
        <img src={vector42} alt="" class="absolute lg:w-[155px] lg:h-[15px] xl:w-[175px] xl:h-[17px] 2xl:w-[200px] 2xl:h-[20px]" style="top: 50%; right: 28%; z-index: 5; pointer-events: none; " />

        <!-- Vector 45: du logo central vers badge left "Allez plus loin" -->
        <img src={vector45} alt="" class="absolute lg:w-[165px] lg:h-[94px] xl:w-[188px] xl:h-[107px] 2xl:w-[212px] 2xl:h-[121px]" style="top: 52%; left: 28%; z-index: 5; pointer-events: none; " />

        <!-- Vector 43: du logo central vers badge right "Découvrez de nouveaux sports" -->
        <img src={vector43} alt="" class="absolute lg:w-[127px] lg:h-[116px] xl:w-[145px] xl:h-[132px] 2xl:w-[164px] 2xl:h-[149px]" style="top: 65%; right: 35%; z-index: 5; pointer-events: none; " />

        <!-- Vector 44: du logo central vers carte bottom "Plus d'excuses" -->
        <img src={vector44} alt="" class="absolute lg:w-[65px] lg:h-[61px] xl:w-[74px] xl:h-[70px] 2xl:w-[84px] 2xl:h-[79px]" style="top: 65%; left: 46%; transform: translateX(-50%); z-index: 5; pointer-events: none;" />

        <!-- Badge orange: "Rejoignez des séances variées..." (en haut) -->
        <div class="absolute lg:top-[20%] xl:top-[21%] 2xl:top-[22%] lg:left-[58%] xl:left-[59%] 2xl:left-[60%] px-2.5 transform -translate-x-1/2 rotate-[-1.343deg] z-10">
            <div class="bg-[rgba(242,94,24,0.09)] border border-[rgba(242,94,24,0.25)] rounded-[19px] lg:px-3 lg:py-2 xl:px-4 xl:py-2.5 2xl:px-5 2xl:py-3 shadow-[0px_0px_86.2px_0px_rgba(242,94,24,0.09)]">
                <p class="text-[#F25E18] font-archivo lg:text-[15px] xl:text-[17px] 2xl:text-[20px] font-bold lg:leading-5 xl:leading-6 2xl:leading-7 text-center whitespace-nowrap">
                    {badges[0].text}
                </p>
            </div>
        </div>

        <!-- Badge orange: "Allez plus loin dans vos objectifs" (à gauche) -->
        <div class="absolute lg:top-[68%] xl:top-[69%] 2xl:top-[70%] lg:left-8 xl:left-10 2xl:left-14 transform -translate-y-1/2 rotate-[-1.539deg] z-10">
            <div class="bg-[rgba(242,94,24,0.09)] border border-[rgba(242,94,24,0.25)] rounded-[19px] lg:px-3 lg:py-2 xl:px-4 xl:py-2.5 2xl:px-5 2xl:py-3 shadow-[0px_0px_86.2px_0px_rgba(242,94,24,0.09)]">
                <p class="text-[#F25E18] font-archivo lg:text-[15px] xl:text-[17px] 2xl:text-[20px] font-bold lg:leading-5 xl:leading-6 2xl:leading-7 text-center whitespace-nowrap">
                    {badges[1].text}
                </p>
            </div>
        </div>

        <!-- Badge orange: "Découvrez de nouveaux sports" (à droite) -->
        <div class="absolute lg:top-[92%] xl:top-[93%] 2xl:top-[94%] lg:right-72 xl:right-76 2xl:right-82 transform -translate-y-1/2 rotate-[1.064deg] z-10">
            <div class="bg-[rgba(242,94,24,0.09)] border border-[rgba(242,94,24,0.25)] rounded-[19px] lg:px-3 lg:py-2 xl:px-4 xl:py-2.5 2xl:px-5 2xl:py-3 shadow-[0px_0px_86.2px_0px_rgba(242,94,24,0.09)]">
                <p class="text-[#F25E18] font-archivo lg:text-[15px] xl:text-[17px] 2xl:text-[20px] font-bold lg:leading-5 xl:leading-6 2xl:leading-7 text-center whitespace-nowrap">
                    {badges[2].text}
                </p>
            </div>
        </div>

        <!-- Carte 1: En haut à gauche - "Créer du lien social" -->
        <div class="absolute lg:top-[12%] xl:top-[14%] 2xl:top-[15%] lg:left-[8%] xl:left-[10%] 2xl:left-[12%] lg:w-[220px] xl:w-[250px] 2xl:w-[284px] z-15 rotate-[2.447deg]">
            <div class="bg-white border border-[#F25E18] rounded-3xl shadow-[0px_4px_20px_-4px_rgba(34,37,42,0.08)] lg:px-[14px] lg:py-[20px] xl:px-[16px] xl:py-[23px] 2xl:px-[18px] 2xl:py-[26px]">
                <div class="flex flex-col items-center text-center lg:gap-[10px] xl:gap-[11px] 2xl:gap-[13px]">
                    <div class="lg:w-16 lg:h-16 xl:w-18 xl:h-18 2xl:w-20 2xl:h-20 rounded-full bg-[rgba(255,105,51,0.1)] flex items-center justify-center">
                        <svg class="lg:w-[32px] lg:h-[32px] xl:w-[36px] xl:h-[36px] 2xl:w-[40px] 2xl:h-[40px]" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M34.73 7.68a9.17 9.17 0 0 0-12.97 0L20 9.45l-1.76-1.77a9.17 9.17 0 0 0-12.97 12.97l1.76 1.77L20 35.38l13.97-13.96 1.76-1.77a9.17 9.17 0 0 0 0-12.97z" stroke="#FF6933" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        </svg>
                    </div>
                    <div>
                        <h4 class="font-poppins lg:text-[13px] xl:text-[14px] 2xl:text-[16px] font-semibold text-black mb-2 leading-[1.2] tracking-[0.32px]">
                            {cards[0].title}
                        </h4>
                        <p class="font-poppins lg:text-[11px] xl:text-[12px] 2xl:text-[14px] font-normal text-black leading-[1.2] tracking-[-0.28px]">
                            {cards[0].description}
                        </p>
                    </div>
                </div>
            </div>
        </div>

        <!-- Carte 2: En haut à droite - "Une progression accélérée" -->
        <div class="absolute lg:top-[38%] xl:top-[39%] 2xl:top-[40%] lg:right-[4%] xl:right-[5%] 2xl:right-[6%] lg:w-[220px] xl:w-[250px] 2xl:w-[284px] z-15 rotate-[2.732deg]">
            <div class="bg-white border border-[#F25E18] rounded-3xl shadow-[0px_4px_20px_-4px_rgba(34,37,42,0.08)] lg:px-[14px] lg:py-[20px] xl:px-[16px] xl:py-[23px] 2xl:px-[18px] 2xl:py-[26px]">
                <div class="flex flex-col items-center text-center lg:gap-[10px] xl:gap-[11px] 2xl:gap-[13px]">
                    <div class="lg:w-16 lg:h-16 xl:w-18 xl:h-18 2xl:w-20 2xl:h-20 rounded-full bg-[rgba(255,105,51,0.1)] flex items-center justify-center">
                        <svg class="lg:w-[32px] lg:h-[32px] xl:w-[36px] xl:h-[36px] 2xl:w-[40px] 2xl:h-[40px]" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M5 5v30h30" stroke="#FF6933" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                            <path d="M30.83 15l-8.33 8.33-5-5-6.67 6.67" stroke="#FF6933" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                            <path d="M25 15h5.83v5.83" stroke="#FF6933" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        </svg>
                    </div>
                    <div>
                        <h4 class="font-poppins lg:text-[13px] xl:text-[14px] 2xl:text-[16px] font-semibold text-black mb-2 leading-[1.2] tracking-[0.32px]">
                            {cards[1].title}
                        </h4>
                        <p class="font-poppins lg:text-[11px] xl:text-[12px] 2xl:text-[14px] font-normal text-black leading-[1.2] tracking-[-0.28px]">
                            {cards[1].description}
                        </p>
                    </div>
                </div>
            </div>
        </div>

        <!-- Carte 3: En bas au centre - "Plus d'excuses pour ne pas pratiquer" -->
        <div class="absolute lg:bottom-[2%] xl:bottom-[-2%] 2xl:-bottom-[10%] lg:left-[38%] xl:left-[39%] 2xl:left-[40%] transform -translate-x-1/2 rotate-[-2.907deg] lg:w-[220px] xl:w-[250px] 2xl:w-[284px] z-15">
            <div class="bg-white border border-[#F25E18] rounded-3xl shadow-[0px_4px_20px_-4px_rgba(34,37,42,0.08)] lg:px-[14px] lg:py-[20px] xl:px-[16px] xl:py-[23px] 2xl:px-[18px] 2xl:py-[26px]">
                <div class="flex flex-col items-center text-center lg:gap-[10px] xl:gap-[11px] 2xl:gap-[13px]">
                    <div class="lg:w-16 lg:h-16 xl:w-18 xl:h-18 2xl:w-20 2xl:h-20 rounded-full bg-[rgba(255,105,51,0.1)] flex items-center justify-center">
                        <svg class="lg:w-[32px] lg:h-[32px] xl:w-[36px] xl:h-[36px] 2xl:w-[40px] 2xl:h-[40px]" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <circle cx="20" cy="20" r="16.67" stroke="#FF6933" stroke-width="2"/>
                            <path d="M15 20l3.33 3.33 6.67-6.66" stroke="#FF6933" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                        </svg>
                    </div>
                    <div>
                        <h4 class="font-poppins lg:text-[13px] xl:text-[14px] 2xl:text-[16px] font-semibold text-black mb-2 leading-[1.2] tracking-[0.32px]">
                            {cards[2].title}
                        </h4>
                        <p class="font-poppins lg:text-[11px] xl:text-[12px] 2xl:text-[14px] font-normal text-black leading-[1.2] tracking-[-0.28px]">
                            {cards[2].description}
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
