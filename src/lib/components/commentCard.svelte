<script>
    export let avatarSrc= '';
    export let name = '';
    export let subtitle = '';
    export let comment = '';
</script>

<div class="bg-[#FFFFFF] border border-[#E6E6E6] rounded-2xl p-3 sm:p-4 flex gap-3 w-full lg:w-[475px] lg:h-[191px]">
    <!-- Avatar -->
    <div class="w-[80px] h-[80px] sm:w-[120px] sm:h-[120px] lg:w-[159px] lg:h-[159px] rounded-xl shrink-0 overflow-hidden">
        <img src={avatarSrc} alt="" class="w-full h-full object-cover">
    </div>

    <!-- Content -->
    <div class="flex flex-col gap-1 sm:gap-2 flex-1 py-1">
        <!-- Name + subtitle -->
        <p class="font-sans text-xs sm:text-sm leading-[120%]">
            <span class="font-semibold text-black">{name}</span>
            <span class="font-normal text-[#6C727F]"> {subtitle}</span>
        </p>

        <!-- Comment -->
        <p class="font-sans font-normal text-xs sm:text-sm leading-[140%] text-black">
            {comment}
        </p>
    </div>
</div>