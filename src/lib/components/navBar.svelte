<script>
    import Logo from "$lib/assets/images/Frame28.png";
    
</script>

<nav
    class="w-full h-[73px] flex items-center justify-center lg:justify-between "
>
    <a href="/" class="cursor-pointer">
        <img src={Logo} alt="Moteeva" class="" />
    </a>
    <div class="hidden w-full lg:flex lg:items-center lg:justify-between lg:ml-[281px] ">
        <ul class="flex font-sans leading-[120%] tracking-[-2%] gap-18 text-base lg:text-lg xl:text-xl">
            <li><a href="/#fonctionnalites" class="hover:text-[#F25E18] transition-colors cursor-pointer">Fonctionnalités</a></li>
            <li><a href="/#comment-ca-marche" class="hover:text-[#F25E18] transition-colors cursor-pointer">Comment ça marche</a></li>
            <li><a href="/#soutenir-le-projet" class="hover:text-[#F25E18] transition-colors cursor-pointer">Soutenir le projet</a></li>
        </ul>
        <a
            href="https://gofund.me/6351004e5"
            target="_blank"
            rel="noopener noreferrer"
            class="bg-[#F25E18] py-2.5 px-5.5 rounded-xl text-white leading-[120%] tracking-[2%] font-sans drop-shadow-md font-semibold drop-shadow-[#F25E18]/30 text-base lg:text-lg hover:opacity-90 transition-all duration-300 ease-in-out"
            >Soutenir le projet</a
        >
    </div>
</nav>
