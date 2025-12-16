<script>
    export let title = '';
    export let icon = '';
    export let text = '';
    export let num = '';
</script>

<div class="border border-gray-200 w-full rounded-[18px] flex items-center justify-between bg-linear-180 from-[#FFFFFF] to-[#F9FAFB] gap-5 pr-5">
    <div class="pl-[25px] flex flex-col gap-[22px] ">
        <div class="flex items-center gap-5 ">
            <p class="text-4xl font-archivo font-semibold leading-[120%] ">{title}</p>
            <img src={icon} alt="" class="w-[42px] h-[42px]"/>
        </div>
        <p class="font-sans text-base font-normal leading-[120%]">
            {text}
        </p>
    </div>
    <p class="text-[170px] font-archivo text-[#ff69334d] leading-none">{num}</p>
</div>
