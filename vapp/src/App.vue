<template>
  <div v-if="isDrizzleInitialized" id="app">
    <img alt="Vue logo" src="./assets/logo.png" />

    <div class="section">
      <h2>Show the Accounts</h2>
      <drizzle-account units="Ether" :precision="2" />
    </div>

    <div class="section">
      <h2>Fuchswert</h2>
      <Fuchswert />
    </div>
  </div>

  <div v-else>Loading...</div>
</template>

<script>
import Fuchswert from "./Fuchswert.vue";
import { mapGetters } from "vuex";

export default {
  name: "app",
  components: {
    Fuchswert,
  },

  computed: mapGetters("drizzle", ["isDrizzleInitialized"]),
};
</script>

<style>
#app {
  font-family: "Avenir", Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
