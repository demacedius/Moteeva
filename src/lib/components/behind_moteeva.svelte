<script>
    import front from "$lib/assets/images/front.png";
    import back from "$lib/assets/images/back.png";
    import tristan_front from "$lib/assets/images/tristant_front.png";
    import tristant_back from "$lib/assets/images/tristan_back.png";
    import moi_front from "$lib/assets/images/moi_front.png";
    import moi_back from "$lib/assets/images/moi_back.png";
    import Acordion from "./acordion.svelte";
    import heart from "$lib/assets/images/heart.png";

    const items = [
        {
            title: "Qui suis-je ?",
            content:
                "Bonjour, je m'appelle <span class=\"text-[#FF6933]\">Téva Philippon</span>, j'ai 20 ans et je suis actuellement en alternance au <a href=\"https://www.campusdesentrepreneurs.fr/\" target=\"_blank\" rel=\"noopener noreferrer\" class=\"text-[#FF6933] underline hover:text-[#e54e0f] transition-colors\">Campus des Entrepreneurs</a>. Comme vous l'avez sûrement deviné, je suis passionné de sport… Mais je déteste être seul !",
        },
        {
            title: "Le Sport dans ma vie.",
            content:
                " Depuis toujours, le sport est au cœur de ma vie : surf, snowboard, et bien d'autres activités. Mais combien de fois me suis-je retrouvé à renoncer à une session parce que c'était trop dangereux d'y aller seul ? Ou à regretter que mes amis ne soient pas là pour partager une belle performance ? C'est dans ces moments-là que l'idée de créer une application qui connecte les sportifs m'est venue.",
        },
        {
            title: "Un défi personnel.",
            content:
                "Au-delà de son aspect pratique, ce projet est aussi l'un des plus grands défis de ma vie. J'apprends chaque jour en travaillant avec des personnes incroyables : que se soit en découvrant ce qu'implique la gestion d'une micro-entreprise, en révéillant mon moi créatif pour les vidéos de mes réseaux ou en jonglant avec des aspects plus techniques comme la comptabilité et la réglementation. C'est exigeant, mais tellement enrichissant.Bien sur je suis reconnaissant envers mes amis qui me soutiennent dans ce défi et envers tous ceux qui prennent le temps de s'intéresser à mon projet.",
        },
        {
            title: "Un immense merci !",
            content:
                "Si vous êtes arrivés jusqu'ici c'est que le projet ne vous laisse pas indiférent et pour cela merci ! Que vous regardiez mes vidéos, parlez du projet autours de vous ou contribuiez d'une manière ou d'une autre, sachez que votre soutien est d'une grande aide pour moi. En contrepartie je vous promets de donner le meilleur de moi-même pour faire de cette application un outil à la hauteur de vos attentes.Merci d'être là, et surtout, merci de croire en ce projet autant que moi.",
        },
    ];

    const techs = [
        {
            title: "La partie design c’est Tristan",
            content:
                "J’ai découvert le travail de Tristan par hasard sur les réseaux et j’ai immédiatement accroché à son univers : ses vidéos, sa façon de concevoir ses projets et surtout son style graphique unique. Au départ, je pensais qu’il était tellement reconnu qu’il ne prendrait jamais le temps de me répondre… Mais j’ai tenté ma chance et je suis tombé sur une personne incroyable : humaine, investie, compréhensive, et qui sait rester très professionnelle quand il le faut.",
        },
        {
            title: "La partie développement, c’est Anthony",
            content:
                "Dès le début de l’aventure Moteeva, je savais qu’il me fallait un développeur solide pour donner vie au projet. En cherchant sur Fiverr, je suis tombé sur Anthony, l’un des rares développeurs d’applications mobiles français présents sur la plateforme. Dès nos premiers échanges, une relation de confiance s’est installée.Passionné de développement depuis l’âge de 14 ans, Anthony a choisi en 2022 d’en faire son métier. Après une reconversion réussie et l’obtention d’un bac+2 en développement web et mobile en 2024, il exerce aujourd’hui en freelance dans ce domaine.Professionnel, fiable et passionné, il apporte toute son expertise technique à Moteeva, ce qui rend notre collaboration aussi agréable qu’efficace.",
        },
    ];
</script>

<section class="mx-auto flex flex-col items-center overflow-visible">
    <h3
        class="font-archivo font-semibold text-5xl leading-[100%] tracking-[-2px] mb-[34px] text-center"
    >
        Derrière Moteeva ?
    </h3>

    <!-- Mobile version -->
    <div class="lg:hidden">
        <div class="flex justify-center">
            <div class="h-[551.86px] w-[336.09px] relative overflow-visible">
                <img
                src={back}
                alt=""
                class="absolute w-full h-full top-0 left-0 z-0"
                />
                <img
                src={front}
                alt=""
                class="absolute w-[115%] h-auto max-w-none top-8 -left-6 z-10"
                />
            </div>
        </div>

        <div class="flex flex-col gap-7 mt-11 w-full">
            {#each items as item}
            <Acordion title={item.title} content={item.content} />
            {/each}
        </div>
    </div>

    <!-- Desktop version: 2 column grid layout -->
    <div class="hidden lg:block lg:max-w-6xl lg:w-full lg:px-8">
        <div class="grid grid-cols-2 gap-16 items-start">
            <!-- Left: Image with same style as mobile -->
            <div class="flex items-start justify-start">
                <div class="relative h-[551.86px] w-[336.09px] overflow-visible">
                    <img
                    src={back}
                    alt=""
                    class="absolute w-full h-full top-0 left-0 z-0"
                    />
                    <img
                    src={front}
                    alt=""
                    class="absolute w-[115%] h-auto max-w-none top-8 -left-6 z-10"
                    />
                </div>
            </div>

            <!-- Right: All accordions stacked -->
            <div class="flex flex-col gap-6">
                <!-- Qui suis-je (opened by default) -->
                <Acordion title={items[0].title} content={items[0].content} defaultOpen={true} />

                <!-- Other accordions (closed by default) -->
                {#each items.slice(1) as item}
                <Acordion title={item.title} content={item.content} />
                {/each}
            </div>
        </div>
    </div>
    <h3
        class="font-archivo font-semibold text-5xl leading-[100%] tracking-[-2px] text-center mt-[80px] lg:mt-[120px]"
    >
        Un projet à taille humaine
    </h3>

    <!-- Mobile version -->
    <div class="mt-[41px] mb-6 lg:hidden">
        <div class="flex justify-center">
            <div class="flex gap-5">
                <div class="relative h-[263px] w-[160px] overflow-visible">
                    <img src={tristant_back} alt="" class="absolute w-full h-full" />
                    <img src={tristan_front} alt="" class="absolute -top-6 w-full" />
                </div>
                <div class="relative h-[263px] w-[160px] overflow-visible">
                    <img src={moi_back} alt="" class="absolute w-full h-full" />
                    <img src={moi_front} alt="" class="absolute -top-6 w-full" />
                </div>
            </div>
        </div>
        <div class="flex flex-col gap-7 mt-11 w-full">
            {#each techs as tech}
                <Acordion title={tech.title} content={tech.content} />
            {/each}
        </div>
    </div>

    <!-- Desktop version: 2 column grid layout -->
    <div class="hidden lg:block lg:max-w-6xl lg:w-full lg:px-8 lg:mt-[60px] lg:mb-12">
        <!-- Row 1: La partie développement text (left) + Anthony image (right) -->
        <div class="grid grid-cols-2 gap-16 mb-16 items-center">
            <!-- Left: La partie développement text (opened by default) -->
            <div class="flex flex-col justify-start">
                <Acordion title={techs[1].title} content={techs[1].content} defaultOpen={true} />
            </div>

            <!-- Right: Anthony image -->
            <div class="flex items-center justify-center">
                <div class="relative h-[350px] w-[220px] overflow-visible">
                    <img src={moi_back} alt="" class="absolute w-full h-full top-0 left-0" />
                    <img src={moi_front} alt="" class="absolute w-[110%] h-auto max-w-none -top-[37.5px] -left-3" />
                </div>
            </div>
        </div>

        <!-- Row 2: Tristan image (left) + La partie design text (right) -->
        <div class="grid grid-cols-2 gap-16 items-center">
            <!-- Left: Tristan image -->
            <div class="flex items-center justify-start">
                <div class="relative h-[350px] w-[220px] overflow-visible">
                    <img src={tristant_back} alt="" class="absolute w-full h-full top-0 left-0" />
                    <img src={tristan_front} alt="" class="absolute w-[110%] h-auto max-w-none -top-9 -left-[15px]" />
                </div>
            </div>

            <!-- Right: La partie design text (opened by default) -->
            <div class="flex flex-col justify-start">
                <Acordion title={techs[0].title} content={techs[0].content} defaultOpen={true} />
            </div>
        </div>
    </div>
    <p
        class="font-sans text-center leading-[120%] tracking-[-2%] font-normal text-base mb-16 lg:mb-20"
    >
        Un merci particulier à Cécile pour son aide et son soutien
    </p>
    <div
        class="max-w-[361px] w-full bg-[#F25E18] rounded-3xl border border-white pb-[18px] lg:max-w-5xl lg:pb-12"
    >
            <h4 class="pt-[18px] px-[18px] font-archivo font-semibold leading-[120%] tracking-[-1px] text-4xl text-center text-white lg:text-5xl lg:px-16 lg:pt-12">
                Merci d'être là, et surtout, merci de croire en ce projet autant
                que moi.
            </h4>
            <p class="font-sans font-normal leading-[120%] tracking-[-2%] text-lg text-white text-center px-[25px] mt-[17px] lg:text-xl lg:px-16 lg:mt-6">
                La cagnotte de financement du projet est disponible ci-dessous.
                N'importe quelle aide est la bienvenue.
            </p>
        <button class="bg-white mx-[18px] mt-[27px] px-[66px] py-3 rounded-[10px] flex items-center justify-center gap-[10px] lg:mx-auto lg:p lg:mt-10 lg:px-20 lg:py-4 opacity-50 cursor-not-allowed" disabled title="La campagne de dons sera ouverte prochainement">
            <img src={heart} alt="Icon en forme de coeur" class="w-6 h-6 lg:w-7 lg:h-7" />
            <p class="font-sans leading-[120%] tracking-[-2%] font-bold text-base text-[#F25F18] lg:text-lg">Soutenir le projet</p>
        </button>
    </div>
</section>
