<script>
    import flag from "$lib/assets/images/Flag.png";
</script>

<div class="relative w-full flex flex-col items-center justify-center pt-16 lg:pt-24 pb-[450px] lg:pb-[700px] overflow-visible z-0">
    <!-- Formes floues en arrière-plan -->
    <div class="absolute top-0 left-0 right-0 w-full h-full -z-10" style="padding-bottom: 200px;">
        <!-- Forme 1 - En haut à gauche -->
        <div class="absolute top-[0%] left-[-10%] w-[80%] lg:w-[60%] h-[60%] lg:h-[70%] bg-[#FF6933] opacity-20 rounded-full" style="filter: blur(120px);"></div>
        <!-- Forme 2 - En bas à droite -->
        <div class="absolute bottom-[-30%] right-[-10%] w-[80%] lg:w-[60%] h-[60%] lg:h-[70%] bg-[#FF8A5B] opacity-20 rounded-full" style="filter: blur(120px);"></div>
    </div>
    <div class="relative z-10 flex flex-col items-center text-center max-w-4xl mx-auto px-4">
        <!-- Texte au-dessus du titre -->
        <div class="mb-4 px-5 py-2.5 border border-[#F25E18] rounded-full inline-block">
            <p class="text-[#F25E18] text-base md:text-lg font-normal leading-[120%]">
                Ensemble, on va plus loin.
            </p>
        </div>

        <!-- Titre principal -->
        <h1
            class="font-semibold text-[32px] md:text-[48px] lg:text-[56px] leading-[122%] font-archivo mb-6 max-w-full"
        >
            Et si vous ne manquiez plus jamais de motivation
            <span class="relative inline-block">
                <span class="relative z-10 bg-[#f25d1852] px-1 py-0.5 inline-block leading-none">pour faire du sport ?</span>
            </span><span class="inline-block align-top"> </span><img
                src={flag}
                alt=""
                class="inline-block align-top h-[1.06em] w-auto relative top-[0.08em]"
            />
        </h1>

        <!-- Sous-titre -->
        <p class="text-[16px] md:text-[18px] leading-[1.4] mb-8 max-w-3xl">
            Moteeva, l'application gratuite qui connecte les sportifs, non sportifs, handisportifs et séniors pour pratiquer, progresser et créer du lien social.
        </p>

        <!-- Bouton principal -->
        <button
            class="mb-4 flex items-center justify-center shadow-lg text-base text-white font-sans bg-[linear-gradient(46deg,#FF6933,#FF571A)] py-3 px-10 rounded-[10px] h-[50px] leading-[1.2] border-none hover:opacity-90 transition-opacity"
        >
            <a href="https://gofund.me/6351004e5">Soutenir-le-projet</a>
            
        </button>

        <!-- Lien découvrir fonctionnalités -->
        <a
            href="#fonctionnalites"
            class="text-[14px] text-gray-600 hover:text-[#FF6933] transition-colors flex items-center gap-2"
        >
            Découvrir les fonctionnalités
            <svg width="12" height="12" viewBox="0 0 12 12" fill="currentColor">
                <path d="M6 0L5.29 0.71L9.88 5.3H0V6.3H9.88L5.29 10.89L6 11.6L12 5.8L6 0Z" transform="rotate(90 6 6)"/>
            </svg>
        </a>
    </div>
</div>
