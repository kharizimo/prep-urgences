<script setup>
import Evaluations from '../components/home-page/Evaluations.vue';
import Evolution from '../components/home-page/Evolution.vue';
import Filter from '../components/home-page/Filter.vue';
import Indicateurs from '../components/home-page/Indicateurs.vue';
import NiveauPrep from '../components/home-page/NiveauPrep.vue';
import ScorePilier from '../components/home-page/ScorePilier.vue';
import Sidebar from '../components/home-page/Sidebar.vue';
</script>
<template>
        <section class="row g-3 mb-4">
          <div class="col-12 col-lg-5">
            <Sidebar/>
          </div>

          <div class="col-12 col-lg-7">
            <div class="row g-3 h-100">
              <div class="col-12"><Filter/></div>
              <div class="col-12"><Indicateurs/></div>
              <div class="col-12"><NiveauPrep/></div>
              <div class="col-12"><Evolution class="d-none"/></div>
            </div>
          </div>
        </section>

        <section class="row g-3 mb-4">
          <div class="col-12 col-lg-4">
            <ScorePilier/>
          </div>
          <div class="col-12 col-lg-8">
            <Evaluations/>
          </div>
        </section>
</template>