<script>
    export let title = '';
    export let icon = '';
    export let text = '';
    export let num = '';
</script>

<div class="relative border border-[#E6E6E6] w-full lg:w-[339px] h-[281px] rounded-2xl p-6 overflow-hidden" style="background: linear-gradient(180deg, #FFFFFF 0%, #F9FAFB 100%);">
    <!-- Numéro en arrière-plan en haut à droite -->
    <div class="absolute right-[11.5px] top-0 pointer-events-none">
        <p class="text-[150px] sm:text-[200px] font-archivo font-bold text-[#FFF5F0] leading-none select-none">{num}</p>
    </div>

    <!-- Contenu -->
    <div class="relative z-10 flex flex-col justify-between h-full">
        <!-- Titre + icon en haut à gauche -->
        <div class="flex items-center gap-3">
            <p class="text-lg sm:text-xl font-archivo font-semibold leading-[120%]">{title}</p>
            <img src={icon} alt="" class="w-7 h-7 sm:w-8 sm:h-8"/>
        </div>

        <!-- Texte en bas à gauche -->
        <p class="font-sans text-sm font-normal leading-[140%] text-[#22252A]">
            {text}
        </p>
    </div>
</div>
