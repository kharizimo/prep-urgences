<script setup lang="ts">
import Logo from '../components/Logo.vue';

</script>

<template><main class="auth-shell">
  <section class="auth-card" aria-labelledby="loginTitle">
    <RouterLink class="auth-brand" to="#">
      <span class="brand-marknd-none"><i class="bi bi-shield-check"></i></span>
      <span>
        <Logo/>
        <strong>Prep Sant&eacute;</strong>
        <small>Pr&eacute;paration aux Urgences</small>
      </span>
    </RouterLink>
    <div class="auth-heading">
      <p class="eyebrow mb-1">Connexion</p>
      <h1 id="loginTitle">Acceder au dashboard</h1>
      <p>Connectez-vous pour suivre les evaluations, les menaces et la progression des scores.</p>
    </div>
    <form class="auth-form" action="index.html">
      <div>
        <label class="form-label" for="loginEmail">Email</label>
        <div class="input-group">
          <span class="input-group-text"><i class="bi bi-envelope"></i></span>
          <input class="form-control" id="loginEmail" name="email" type="email" autocomplete="email" placeholder="admin@prep-sante.cd" required>
        </div>
      </div>
      <div>
        <div class="d-flex align-items-center justify-content-between gap-2">
          <label class="form-label" for="loginPassword">Mot de passe</label>
          <a class="auth-link small" href="forgot.html">Mot de passe oubli&eacute; ?</a>
        </div>
        <div class="input-group">
          <span class="input-group-text"><i class="bi bi-lock"></i></span>
          <input class="form-control" id="loginPassword" name="password" type="password" autocomplete="current-password" placeholder="Votre mot de passe" required>
        </div>
      </div>
      <div class="form-check">
        <input class="form-check-input" type="checkbox" value="1" id="rememberSession">
        <label class="form-check-label" for="rememberSession">Garder la session ouverte</label>
      </div>
      <button class="btn btn-primary auth-submit" type="submit">
        <i class="bi bi-box-arrow-in-right"></i>
        Se connecter
      </button>
    </form>
    <p class="auth-switch">Pas encore de compte ? <a href="register.html">Creer un compte</a></p>
  </section>
</main></template>