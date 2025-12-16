<script>
    export let title = '';
    export let icon = '';
    export let text = '';
    export let num = '';
</script>

<div class="border border-gray-200 w-full max-w-full rounded-[18px] flex items-center justify-between bg-linear-180 from-[#FFFFFF] to-[#F9FAFB] gap-5 pr-5">
    <div class="pl-[25px] flex flex-col gap-[22px] flex-1 min-w-0">
        <div class="flex items-center gap-5 flex-wrap">
            <p class="text-4xl font-archivo font-semibold leading-[120%]">{title}</p>
            <img src={icon} alt="" class="w-[42px] h-[42px]"/>
        </div>
        <p class="font-sans text-base font-normal leading-[120%] wrap-break-word">
            {text}
        </p>
    </div>
    <p class="text-[170px] font-archivo text-[#ff69334d] leading-none shrink-0">{num}</p>
</div>
