<template>
  <div v-if="isDrizzleInitialized">
    <div>
      <drizzle-contract
        contractName="Fuchswert"
        method="letzterName"
        label="Letzter Name"
      />
      <drizzle-contract
        contractName="Fuchswert"
        method="fuchswertProzent"
        label="Der Fuchswert in Prozent"
      />

      <drizzle-contract-form
        contractName="Fuchswert"
        method="fuchswert"
        :placeholders="['Name zum berechnen vom Fuchswert']"
      />

      <drizzle-contract-form
        contractName="Migrations"
        method="setCompleted"
        :placeholders="['welche Migration?']"
      />
    </div>
  </div>

  <div v-else>Loading...</div>
</template>

<script>
import { mapGetters } from "vuex";

export default {
  name: "Fuchswert",

  computed: mapGetters("drizzle", ["isDrizzleInitialized"]),
};
</script>

<style></style>
