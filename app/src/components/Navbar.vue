<script setup lang="ts">
import Logo from './Logo.vue';
import {useRoute} from 'vue-router';

const route = useRoute();

</script>

<template><nav class="app-shell navbar navbar-expand-lg sticky-top">
  <div class="container">
    <a class="navbar-brand d-flex align-items-center gap-2" href="/">
      <Logo />
      <span>
            <strong>Prep Urgences</strong>
            <small>Pr&eacute;paration aux Urgences</small>
      </span>
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mainNavigation" aria-controls="mainNavigation" aria-expanded="false" aria-label="Afficher le menu">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="mainNavigation">
      <ul class="navbar-nav main-menu me-lg-auto ms-lg-4 my-3 my-lg-0">
        <li class="nav-item">
          <RouterLink class="nav-link" aria-current="page" :class="{'active':route.path==='/'}" to="/">
            <i class="bi bi-speedometer2"></i>
            Dashboard
          </RouterLink>
        </li>
        <li class="nav-item">
          <RouterLink class="nav-link" :class="{'active':route.path==='/evaluations'}" to="/evaluations">
            <i class="bi bi-clipboard2-check"></i>
            Evaluation
          </RouterLink>
        </li>
        <li class="nav-item">
          <RouterLink class="nav-link" :class="{'active':route.path==='/referentiel'}" to="/referentiel">
            <i class="bi bi-journal-bookmark"></i>
            R&eacute;f&eacute;rentiel
          </RouterLink>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="remote.html">
            <i class="bi bi-cloud-arrow-up"></i>
            Remote
          </a>
        </li>
        <li class="nav-item">
          <RouterLink class="nav-link" to="users.html">
            <i class="bi bi-people"></i>
            Utilisateurs
          </RouterLink>
        </li>
      </ul>
      <div class="navbar-actions d-flex align-items-lg-center gap-2">
        <div class="dropdown user-menu">
          <button class="btn btn-sm btn-light dropdown-toggle user-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
            <span class="user-avatar">AG</span>
            <span class="user-meta">
              <strong>Admin General</strong>
              <small>Administrateur</small>
            </span>
          </button>
          <ul class="dropdown-menu dropdown-menu-end shadow-sm">
            <li>
              <a class="dropdown-item" href="profile.html">
                <i class="bi bi-person"></i>
                Profil
              </a>
            </li>
            <li><hr class="dropdown-divider"></li>
            <li>
              <a class="dropdown-item text-danger" href="#">
                <i class="bi bi-box-arrow-right"></i>
                D&eacute;connexion
              </a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</nav></template>