<script>
    import NavBar from "$lib/components/navBar.svelte";
    import Header from "$lib/components/header.svelte";
    import Why from "$lib/components/why_moteeva.svelte";
    import Chose from "$lib/components/Why_chose_moteeva.svelte";
    import Behind from "$lib/components/behind_moteeva.svelte";
    import Faq from "$lib/components/faq.svelte";
    import Footer from "$lib/components/footer.svelte";
</script>

<main class="md:max-w-[1620px] mx-auto px-4 sm:px-[21px] bg-white overflow-x-hidden max-w-full">
    <NavBar/>
    <div id="accueil">
        <Header/>
    </div>
    <div id="fonctionnalites">
        <Why/>
    </div>
    <div id="comment-ca-marche">
        <Chose/>
    </div>
    <div id="derriere-moteeva">
        <Behind/>
    </div>
    <div id="faq">
        <Faq/>
    </div>
    <Footer/>
</main>
 