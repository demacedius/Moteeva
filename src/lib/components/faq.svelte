<script>
    import Acordion from "./acordion.svelte";

    const questions = [
  {
    "title": "Comment fonctionne Moteeva ?",
    "content": "Moteeva permet de trouver ou créer des sessions sportives autour de chez vous. Vous rejoignez un lieu près de chez vous et rencontrez des sportifs selon votre niveau partagé dans l'annonce. Vous pouvez aussi inviter vos amis sur une annonce et voir les annonces proches pour partager votre passion du sport dans une ambiance conviviale."
  },
  {
    "title": "L'application est-elle gratuite ?",
    "content": "Oui, Moteeva est gratuite dans sa version de base. Pour les organisateurs, des options avancées (gestion des niveaux, sécurité...) seront affichées, afin d'optimiser la création et le suivi des sessions. Une partie de ces fonctionnalités deviennent disponibles pour ceux qui souhaitent supporter le projet par l'achat de fonctionnalités additionnelles — toujours dans une mesure à l'accessibilité."
  },
  {
    "title": "Comment êtes-vous assurés de la sécurité ?",
    "content": "Oui, Moteeva est gratuite dans sa version de base. Pour soutenir le projet, des publicités légères et non intrusives seront affichées, afin de ne pas gêner votre expérience. Une offre premium légère est également disponible pour ceux qui souhaitent supprimer les pubs et profiter de fonctionnalités exclusives — toujours dans la mesure de l'accessibilité."
  },
  {
    "title": "Quels sports sont disponibles ?",
    "content": "Notre objectif est simple : rassembler tous les sports possibles et imaginables sur Moteeva ! Des sports collectifs aux sports individuels, des raquettes, d’endurance, de glisse, de combat, ou encore de précision, la limite ne cesse de s’agrandir selon les retours de la communauté."
  },
  {
    "title": "Comment le niveau sportif est-il déterminé ?",
    "content": "Lors de l'inscription, vous choisissez votre niveau de pratique (débutant, intermédiaire, confirmé). Ce niveau pourra être ajusté automatiquement en fonction de vos participations et des retours des autres utilisateurs, pour garantir des sessions équitables et agréables."
  },
  {
    "title": "Puis-je organiser des événements en groupe ?",
    "content": "Oui, bien sûr ! Vous pouvez créer vos propres sessions et inviter vos amis ou rendre la session publique pour rencontrer de nouveaux sportifs. À terme, il sera aussi possible d’organiser des grands événements communautaires (tournois, courses, challenges...) directement depuis l’application."
  },
  {
    "title": "L’application fonctionne-t-elle dans ma région ?",
    "content": "Oui ! Moteeva est conçu pour fonctionner partout en France. Même si la communauté se construit progressivement, vous pouvez déjà publier vos sessions — plus vous serez nombreux à le faire, plus votre région deviendra dynamique et active."
  },
  {
    "title": "Que faire si mon partenaire ne se présente pas ?",
    "content": "Si un participant ne vient pas à la session, vous pouvez laisser un avis pour le signaler et aider à maintenir une communauté fiable. Ces avis influencent la notation des profils afin de favoriser les utilisateurs sérieux et réguliers."
  },
  {
    "title": "Puis-je découvrir de nouveaux sports ?",
    "content": "Oui ! Grâce à l’onglet Découverte, vous pourrez explorer de nouveaux sports, participer à des initiations ou rejoindre des sessions atypiques près de chez vous."
  },
  {
    "title": "Puis-je noter mes partenaires après une session ?",
    "content": "Oui, après chaque session, vous pourrez laisser un avis sur vos partenaires ou l'organisateur. Ces retours aident à construire une communauté de confiance et à valoriser les meilleurs profils."
  },
  {
    "title": "Y aura-t-il des classements ou des récompenses ?",
    "content": "Oui ! Moteeva inclut un système de points et de badges pour les utilisateurs les plus actifs. Participez à des sessions, découvrez de nouveaux sports ou organisez des événements pour grimper dans les classements régionaux !"
  }
]

</script>
<section class="mb-[211px] lg:mb-[120px]">
    <h3 class="font-archivo text-[45px] leading-[100%] tracking-[-2px] text-[#FF6933] font-semibold text-center mt-[63px] lg:text-5xl lg:mt-[100px]">Questions Fréquentes</h3>
    <p class="text-sans font-normal text-base leading-[120%] tracking-[-2%] text-center mt-2 text-[#00000070] lg:text-lg lg:mt-3">
        Tout ce que vous devez savoir sur Moteeva pour commencer votre aventure sportive
    </p>
    <div class="flex flex-col gap-4 mt-9 lg:max-w-4xl lg:mx-auto lg:gap-5 lg:mt-12">
        {#each questions as question}
            <Acordion title={question.title} content={question.content}/>
        {/each}
    </div>
</section>