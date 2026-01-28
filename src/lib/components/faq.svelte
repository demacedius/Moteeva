<script>
    import Acordion from "./acordion.svelte";

    const questions = [
  {
    "title": "Comment fonctionne Moteeva ?",
    "content": "Moteeva permet de créer ou rejoindre des sessions sportives près de chez toi selon le sport, le niveau, le lieu et le type de session. Tu pratiques avec d'autres personnes, simplement et en confiance."
  },
  {
    "title": "L'application est-elle gratuite ?",
    "content": "Oui ! Moteeva est gratuite pour découvrir et rejoindre des sessions. Un abonnement optionnel permet ensuite de rejoindre plus de sessions et de supprimer les publicités."
  },
  {
    "title": "Quels sports sont disponibles ?",
    "content": "L'objectif est de proposer tous les sports possibles et imaginables, des plus populaires aux plus confidentiels, en intérieur comme en extérieur."
  },
  {
    "title": "Comment le niveau sportif est-il pris en compte ?",
    "content": "Chaque utilisateur renseigne son niveau et peut être évalué après les sessions. Cela permet de proposer des sessions plus équilibrées et adaptées à chacun(e)."
  },
  {
    "title": "Puis-je organiser des sessions ou événements ?",
    "content": "Oui ! Tu peux créer des sessions publiques ou privées, inviter tes ami(e)s ou ouvrir la session à la communauté selon tes envies."
  },
  {
    "title": "Que se passe-t-il si un(e) participant(e) ne se présente pas ?",
    "content": "Après chaque session, tu peux laisser un avis. Les absences répétées peuvent impacter la visibilité et la fiabilité d'un profil, voire aboutir à un bannissement."
  },
  {
    "title": "Puis-je découvrir de nouveaux sports ?",
    "content": "Oui ! Moteeva encourage la découverte de nouvelles pratiques, grâce à des sessions ouvertes aux débutant(e)s ou des sessions d'initiation."
  },
  {
    "title": "Moteeva fonctionne-t-elle dans ma région ?",
    "content": "Oui ! L'application est pensée pour fonctionner dans toute la France."
  },
  {
    "title": "Puis-je noter les autres participants après une session ?",
    "content": "Oui. Les avis permettent de renforcer la confiance, la sécurité et la qualité des rencontres sportives."
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