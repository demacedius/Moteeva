<script>
    export let tag = '';
    import check from '$lib/assets/images/check.svg';
</script>

<div class="bg-[rgba(242,94,24,0.09)] flex  pl-5 py-2.5 pr-2.5 items-center gap-6.5 border border-[rgba(242,94,24,0.25)] rounded-[19px]">
    <img src={check} alt="" class="w-[25px] h-[25px]">
    <h3 class="font-archivo text-xl font-bold leading-7 text-[#F25E18]  ">{tag}</h3>
</div>