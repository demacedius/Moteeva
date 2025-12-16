<script>
    export let avatarSrc= '';
    export let comment = '';
    export let isReversed = false;
</script>

<div class="flex flex-start items-start gap-3 max-w-full {isReversed ? 'flex-row-reverse' : ''}">
    <div class="w-12 h-12 rounded-full border-2 border-[#F25E18] shrink-0 overflow-hidden">
        <img src={avatarSrc} alt="" class="w-full h-full object-cover">
    </div>

    <div class="border border-[#F25E18] rounded-2xl px-4 py-3 flex-1 min-w-0 {isReversed ? 'rounded-tr-none' : 'rounded-tl-none'}">
        <p class="font-sans font-normal text-sm leading-[140%] wrap-break-word">{comment}</p>
    </div>
</div>