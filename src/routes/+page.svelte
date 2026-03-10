<script>
    import NavBar from "$lib/components/navBar.svelte";
    import Header from "$lib/components/header.svelte";
    import Why from "$lib/components/why_moteeva.svelte";
    import PublishFind from "$lib/components/publish_find.svelte";
    import SessionTypes from "$lib/components/session_types.svelte";
    import WhyChoose from "$lib/components/why_choose.svelte";
    import Behind from "$lib/components/behind_moteeva.svelte";
    import Faq from "$lib/components/faq.svelte";
    import Newsletter from "$lib/components/newsletter.svelte";
    import Footer from "$lib/components/footer.svelte";
</script>

<main class="md:max-w-[1620px] mx-auto px-4 sm:px-[21px] overflow-x-hidden max-w-full">
    <NavBar/>
</main>

<div id="accueil" class="relative z-0">
    <Header/>
</div>

<div id="fonctionnalites" class="relative z-10 px-4 sm:px-[21px]">
    <Why/>
</div>

<main class="md:max-w-[1620px] mx-auto px-4 sm:px-[21px] overflow-x-hidden max-w-full">
    <div id="publiez-et-trouvez">
        <PublishFind/>
    </div>
</main>

<div id="types-de-sessions">
    <SessionTypes/>
</div>

<main class="md:max-w-[1620px] mx-auto px-4 sm:px-[21px] overflow-x-hidden max-w-full">
    <div id="pourquoi-choisir">
        <WhyChoose/>
    </div>
    <div id="derriere-moteeva">
        <div id="soutenir-le-projet">
            <Behind/>
        </div>
    </div>
    <div id="faq">
        <Faq/>
    </div>
    <Newsletter/>
    <Footer/>
</main>
 