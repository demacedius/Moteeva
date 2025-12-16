<script>
      export let title = '';
      export let content = '';
      export let defaultOpen = false;

      let isOpen = defaultOpen;

      function toggle() {
          isOpen = !isOpen;
      }
  </script>

  <div class="border border-[#E4E5E7] rounded-lg overflow-hidden max-w-full">
      <!-- Header cliquable -->
      <button
          on:click={toggle}
          class="w-full bg-white flex pl-5 py-2.5 pr-2.5 items-center justify-between gap-6.5"
      >
          <div class="flex items-center gap-6.5 flex-1 min-w-0">
              <h3 class="font-archivo text-2xl text-left font-bold leading-[110%] tracking-[-2%] wrap-break-word">{title}</h3>
          </div>
          <!-- Icône qui tourne -->
          <svg
              class="w-3 h-4  text-black  transition-transform duration-300 {isOpen ? 'rotate-180' : ''}"
              fill="none"
              stroke="currentColor"
              viewBox="0 0 24 24"
          >
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
          </svg>
      </button>

      <!-- Contenu qui s'ouvre/ferme -->
      {#if isOpen}
          <div class="px-5 py-4 bg-white font-sans text-base text-gray-700">
              <p>{@html content}</p>
          </div>
      {/if}
  </div>