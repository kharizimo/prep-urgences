<script setup>
import Navbar from './components/Navbar.vue'
import Footer from './components/Footer.vue'
import Header from './components/Header.vue'
import AxeToggle from './components/AxeToggle.vue';
</script>
<template>
  <Navbar v-show="true" />
  <main class="py-4 flex-grow-1">
      <div class="container">
        <Header v-show="true"><div class="page-header-actions">
          <AxeToggle :axes="['Global','Hopitaux','Rapide']"/>
          <div class="text-end" id="custom-btn"></div>
        </div></Header>
        <RouterView/>
      </div>
    </main>
  <Footer v-show="true" />
</template>
