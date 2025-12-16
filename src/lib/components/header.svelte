<script>
    import flag from "$lib/assets/images/Group71.png";
    import heart from "$lib/assets/images/Vector.svg";
    import App from "$lib/assets/images/smartphone.png";
    import Chemin from "$lib/assets/images/chemin.png";
</script>

<div
    class="border-2 border-[#F25E18] rounded-[34px] w-full flex flex-col pb-7 pt-[26px] lg:relative lg:mt-[116px] lg:h-[554px]"
>
    <div
        class="max-lg:hidden lg:absolute lg:inset-0 lg:rounded-[34px] lg:overflow-hidden"
    >
        <img
            src={Chemin}
            alt=""
            class="-top-[3px] left-20 w-full h-[505px] absolute"
        />
    </div>
    <img
        src={App}
        alt="Application Moteeva sur un smartphone"
        class="hidden lg:block absolute w-[362px] h-[616px] bottom-0 right-[100px] z-10 overflow-visible max-h-none"
    />

    <div
        class="relative z-10 flex flex-col items-center px-4 lg:items-start lg:w-1/2 lg:ml-40  lg:mt-[140px] "
    >
        <h1
            class="font-semibold text-[37px] leading-[122%] font-archivo text-left lg:mb-5"
        >
            Et si trouver un partenaire pour<br class="lg:hidden" /> faire du
            sport

            <span class="lg:hidden">
                <span class="bg-[#f25d1852] leading-none inline-block px-1"
                    >n'était</span
                >
                <br />

                <span class="inline-flex items-center">
                    <span class="bg-[#f25d1852] leading-none inline-block px-1"
                        >plus un problème ?</span
                    >
                    <img
                        src={flag}
                        alt=""
                        class="w-[36.12px] h-[42px] inline-block"
                    />
                </span>
            </span>

            <span class="hidden lg:inline-flex items-center">
                <span class="bg-[#f25d1852] leading-none inline-block px-1">
                    n'était plus un problème ?
                </span>
                <img
                    src={flag}
                    alt=""
                    class="w-[36.12px] h-[42px] inline-block"
                />
            </span>
        </h1>
        <p
            class="mt-4 max-w-full text-center font-regular text-[18px] leading-[1.2] lg:text-left lg:mb-8"
        >
            Moteeva, l'application qui connecte les sportifs entre eux pour
            s'entraîner, progresser et partager leurs passions.
        </p>

        <button
            class="mt-6 flex items-center justify-center gap-[19px] shadow-gray-400 drop-shadow-lg text-base text-white font-sans bg-[linear-gradient(46deg,#FF6933,#FF571A)] py-2 px-8 rounded-[10px] h-[42px] leading-[1.2] border-none opacity-50 cursor-not-allowed"
            disabled
            ><img src={heart} alt="heart icon" />
            Soutenir le projet</button
        >
    </div>
</div>
