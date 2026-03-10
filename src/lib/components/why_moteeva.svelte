<script>
    import CommentCard from "./commentCard.svelte";
    import Card from "./card.svelte";
    import Lucas from "$lib/assets/images/Lucas.png";
    import Sarah from "$lib/assets/images/Sarah.png";
    import Mehdi from "$lib/assets/images/Mehdi.png";
    import Marie from "$lib/assets/images/Marie.png";
    import Julien from "$lib/assets/images/Julien.png";
    import basketballPlayer from "$lib/assets/images/Gemini_Generated_Image_6u4ge26u4ge26u4g (1) 1.png";
    import courbe from "$lib/assets/images/courbe.png";
    import map from "$lib/assets/images/map.svg";
    import calendar from "$lib/assets/images/calendar.svg";
    import people from "$lib/assets/images/people.svg";
    import stats from "$lib/assets/images/stats.png";
    import shield from "$lib/assets/images/shield.png";
    import bgTriangle from "$lib/assets/images/bg_triangle.png";


    const comments = [
        {
            avatarSrc: Lucas,
            name: "Lucas",
            subtitle: "(22 ans, Étudiant)",
            comment: "Abandonne souvent ses séances quand il est seul.",
        },
        {
            avatarSrc: Sarah,
            name: "Sarah",
            subtitle: "(30 ans, Nouvelle dans sa ville)",
            comment: "Voudrait rencontrer des gens naturellement, pas sur une appli de dating.",
        },
        {
            avatarSrc: Mehdi,
            name: "Mehdi",
            subtitle: "(43 ans, grand sportif)",
            comment: "Cherche des partenaires de son niveau, fiables.",
        },
        {
            avatarSrc: Marie,
            name: "Marie",
            subtitle: "(65 ans, retraitée)",
            comment: "Aimerait marcher avec d'autres pour ne plus être isolée.",
        },
        {
            avatarSrc: Julien,
            name: "Julien",
            subtitle: "(29 ans, en situation de handicape)",
            comment: "Veut pratiquer dans un cadre réellement inclusif.",
        },
    ];

    const cards = [
        {
            title: "Sport",
            icon: courbe,
            text: "Choisissez votre activité.",
            num: "1",
        },
        {
            title: "Lieu",
            icon: map,
            text: "Définissez où vous voulez pratiquer",
            num: "2",
        },
        {
            title: "Date",
            icon: calendar,
            text: "Planifiez quand cela vous arrange",
            num: "3",
        },
        {
            title: "Type de session",
            icon: people,
            text: "Définissez un cadre de pratique rassurant et inclusif, adapté à vos envies et à vos besoins.",
            num: "4",
        },
        {
            title: "Niveau",
            icon: stats,
            text: "Trouvez des partenaires adaptés à votre niveau",
            num: "5",
        },
        {
            title: "Sécurité",
            icon: shield,
            text: "Profils vérifiés, avis utilisateurs et sessions encadrées par des ambassadeurs.",
            num: "6",
        },
    ];
</script>

<section
    class="bg-[#F9FAFB] border border-[rgba(0,0,0,0.17)] rounded-[30px] pt-16 lg:pt-20 -mt-[400px] lg:-mt-[650px] w-full max-w-[1620px] mx-auto relative z-20"
>
    <div class="flex flex-col items-center px-4 sm:px-8 lg:px-12">
        <div class="flex flex-col lg:flex-row lg:gap-[120px] lg:mb-[200px]">
            <!-- Left column: Text content (sticky on desktop) -->
            <div class="lg:flex-1 lg:sticky lg:top-24 lg:self-start">
                <div class="mb-6 rounded-full border border-[#22252A] text-[#22252A] inline-block px-5 py-2.5 w-full sm:w-auto lg:max-w-[416px]">
                    <p class="text-sm font-sans leading-[120%] font-normal text-center sm:text-left">
                        La raison n°1 pour laquelle on arrête le sport
                    </p>
                </div>
                <div class="flex flex-col gap-4 font-sans font-normal text-base">
                    <h2 class="text-[24px] sm:text-[28px] lg:text-[32px] font-semibold font-archivo leading-[110%]">
                        Qui n'a jamais repoussé une séance de sport parce qu'il n'avait <span class="text-[#FF6933]">personne avec qui la partager ?</span>
                    </h2>
                    <p class="leading-[140%]">
                        Une étude japonaise (JAGES Cohort Study) a montré que, même
                        avec la même fréquence d'entraînement, les personnes <b
                            >qui s'exercent avec d'autres</b
                        > perçoivent leur santé comme meilleure que celles qui s'entraînent
                        seules.
                    </p>

                    <p class="leading-[140%]">
                        👉 Résultat : partager ses séances de sport booste à la fois <b
                            >la motivation</b
                        >
                        et <b>le plaisir ressenti</b>.
                    </p>
                    <p class="leading-[140%]">
                        C'est pour ça qu'avec <b>Moteeva</b>, nous mettons l'accent
                        sur l'entraînement collectif et le partage, afin que tu ne
                        repousses plus jamais une séance… et qu'elle devienne
                        toujours un moment agréable.
                    </p>
                </div>
            </div>

            <!-- Right column: Comment cards (scrollable on desktop) / Below text (on mobile) -->
            <div class="flex flex-col gap-4 sm:gap-6 mt-8 sm:mt-12 mb-12 sm:mb-[87px] lg:mt-0">
                {#each comments as commentData}
                    <CommentCard
                        avatarSrc={commentData.avatarSrc}
                        name={commentData.name}
                        subtitle={commentData.subtitle}
                        comment={commentData.comment}
                    />
                {/each}
            </div>
        </div>

        <!-- Section "Tous ont un point commun" -->
        <div class="flex flex-col lg:flex-row gap-[35px] mb-[87px] w-full">
            <!-- Carte orange -->
            <div class="bg-[#FF6933] rounded-3xl p-6 sm:p-8 lg:p-10 lg:flex-1 flex flex-col">
                <h3 class="text-white font-archivo font-semibold text-[28px] sm:text-3xl lg:text-4xl leading-[120%] mb-6">
                    Tous ont un point commun :
                </h3>
                <p class="text-white font-sans font-normal text-[15px] sm:text-base lg:text-lg leading-[150%] mb-5">
                    Le sport devient plus simple, plus motivant et plus vivant… quand on le partage.
                </p>
                <p class="text-white font-sans font-normal text-[15px] sm:text-base lg:text-lg leading-[150%] mb-5">
                    C'est pour ça que j'ai voulu créer Moteeva : pour redonner une place centrale au lien social dans la pratique sportive, pour que tu ne repousses plus tes séances…
                </p>
                <p class="text-white font-sans text-[15px] sm:text-base lg:text-lg leading-[150%] mb-8">
                    Et que chaque sortie devienne un moment agréable, humain, et motivant.
                </p>
                <a href="https://gofund.me/6351004e5" target="_blank" rel="noopener noreferrer" class="bg-white text-[#FF6933] font-sans font-semibold text-base px-8 sm:px-[66px] py-2 rounded-lg inline-flex items-center justify-center sm:justify-start gap-3 w-full sm:w-auto sm:self-start hover:opacity-90 transition-all duration-300 ease-in-out">
                    <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" xmlns="http://www.w3.org/2000/svg">
                        <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"/>
                    </svg>
                    Soutenir le projet
                </a>
            </div>

            <!-- Illustration basketball dans une carte blanche séparée - hidden on mobile -->
            <div class="hidden lg:flex bg-white rounded-3xl p-8 lg:p-10 items-center justify-center border-2 border-gray-200 lg:w-[450px] lg:min-h-[450px]">
                <img src={basketballPlayer} alt="Joueur de basketball" class="w-full h-auto max-w-[300px]" />
            </div>
        </div>
    </div>
</section>

<!-- Section des 6 cards -->
<section id="comment-ca-marche" class="relative py-12 sm:py-16 lg:py-20 left-1/2 right-1/2 -ml-[50vw] -mr-[50vw] w-screen" style="background-image: url({bgTriangle}); background-size: 1920px auto; background-position: center; background-repeat: no-repeat;">
    <div class="relative z-10 flex flex-col items-center px-4 sm:px-8 lg:px-12 max-w-[1620px] mx-auto">
        <div class="flex flex-col gap-4 mb-8 sm:mb-12 max-w-[800px] px-4">
            <p
                class="text-[24px] sm:text-[32px] lg:text-[36px] font-archivo font-semibold leading-[120%] text-center tracking-[-1px]"
            >
                Faire du sport, c'est toujours plus motivant, plus sécurisant et plus agréable
                <span class="text-[#FF6933]">quand on le partage</span>.
            </p>
            <p
                class="font-archivo text-[#6C727F] text-center text-[15px] sm:text-base leading-[140%] font-normal"
            >
                Alors pourquoi ne pas connecter toutes ces personnes autour
                de leurs passions sportives ?
            </p>
        </div>
        <div class="flex flex-col lg:grid lg:grid-cols-3 gap-y-[38px] gap-x-[48px] w-full lg:w-fit lg:mx-auto">
            {#each cards as cardsData}
                <Card
                    title={cardsData.title}
                    icon={cardsData.icon}
                    text={cardsData.text}
                    num={cardsData.num}
                />
            {/each}
        </div>
    </div>
</section>
