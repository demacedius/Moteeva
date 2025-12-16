<script>
    import CommentCard from "./commentCard.svelte";
    import Card from "./card.svelte";
    import C1 from "$lib/assets/images/Ellipse 20.png";
    import C2 from "$lib/assets/images/Ellipse 22.png";
    import C3 from "$lib/assets/images/Ellipse 28.png";
    import people from "$lib/assets/images/people.svg";
    import map from "$lib/assets/images/map.svg";
    import calendar from "$lib/assets/images/calendar.svg";
    import target from "$lib/assets/images/target.svg";
    

    const comments = [
        {
            avatarSrc: C1,
            comment:
                "\"Je n'aime pas faire mon footing tout seul et aucun de mes amis n'est disponible pour m'accompagner\"",
        },
        {
            avatarSrc: C3,
            comment:
                "\"Je voudrais aller faire de l'escalade mais personne n'est là pour m'assurer\"",
        },
        {
            avatarSrc: C2,
            comment:
                '"On est trois potes qui jouent au basket, on est pas assez pour faire un 3x3, ce n\'est pas motivant"',
        },
    ];

    const cards = [
        {
            title: "Sport",
            icon: people,
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
            title: "Niveau",
            icon: target,
            text: "Trouvez des partenaires à votre niveau",
            num: "4",
        },
    ];
</script>

<section
    class="bg-[#F9FAFB] pt-[38px] mt-8 relative left-1/2 right-1/2 -ml-[50vw] -mr-[50vw] w-screen overflow-hidden"
>
    <div class="flex flex-col items-center px-8 max-w-[1620px] mx-auto">
        <div class="flex flex-col lg:flex-row lg:gap-[103px] lg:mb-[185px]">
            <!-- Left column: Text content -->
            <div class="lg:flex-1">
                <div class="mb-7 rounded-full bg-[#4E1B02] text-white inline-block px-5 py-2 lg:max-w-[416px]">
                    <p class="text-base font-sans leading-[120%] font-normal tracking-[-2%]">
                        La raison n°1 pour laquelle on arrête le sport
                    </p>
                </div>
                <div class="flex flex-col gap-6 font-sans font-normal text-base">
                    <h2 class="text-2xl font-semibold font-archivo leading-[110%]">
                        Qui n'a jamais repoussé une séance de sport parce qu'il
                        n'avait personne avec qui la partager ?
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

            <!-- Right column: Comment cards (on desktop) / Below text (on mobile) -->
            <div class="flex flex-col gap-6 mt-11 mb-[87px] lg:flex-1 lg:mt-0">
                {#each comments as commentData, index}
                    <CommentCard
                        avatarSrc={commentData.avatarSrc}
                        comment={commentData.comment}
                        isReversed={index % 2 === 1}
                    />
                {/each}
            </div>
        </div>

        <div>
            <div class="flex flex-col gap-4">
                <p
                    class="text-4xl font-archivo font-semibold leading-[120%] text-center"
                >
                    Le sport, c'est toujours plus motivant et amusant lorsqu'on
                    le
                    <span class="text-[#FF6933]">partage avec d'autres</span>
                </p>
                <p
                    class="font-archivo text-[#6C727F] text-center text-xl leading-[132.5%] font-normal"
                >
                    Alors pourquoi ne pas connecter toutes ces personnes autour
                    de leurs passions sportives ?
                </p>
            </div>
            <div class="flex flex-col lg:flex-row gap-[31px] mt-[52px] mb-14">
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
    </div>
</section>
