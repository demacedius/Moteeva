<script>
    export let title = '';
    export let icon = '';
    export let text = '';
</script>

<div class="flex flex-col items-center text-center p-6">
    <div class="bg-[#FFF5F0] rounded-full p-4 mb-6">
        <img src={icon} alt="" class="w-8 h-8"/>
    </div>
    <h3 class="text-xl font-archivo font-semibold leading-[120%] mb-4">{title}</h3>
    <p class="font-sans text-sm font-normal leading-[140%] text-[#6C727F]">
        {text}
    </p>
</div>
