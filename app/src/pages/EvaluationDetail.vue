<script setup lang="ts">
import Sidebar from '../components/evaluation-detail/Sidebar.vue';

</script>

<template><main class="py-4">
  <div class="container">
    <header class="page-header mb-4">
      <div>
        <p class="eyebrow mb-1">Evaluation</p>
        <h1 class="h4 mb-1">EV-001 &mdash; MVE Ebola, Kinshasa</h1>
        <p class="text-secondary mb-0">Aeroport N&rsquo;djili &middot; Point d&rsquo;entr&eacute;e &middot; F&eacute;vrier 2026 &middot; 18 participants</p>
      </div>
      <RouterLink class="btn btn-light profile-save-btn" to="/evaluations">
        <i class="bi bi-arrow-left"></i>
        Retour
      </RouterLink>
    </header>
    <form>
      <div class="evaluation-detail-layout">
        <Sidebar/>
        <section class="evaluation-detail-main">
          <div class="detail-save-bar card">
            <div class="card-body">
              <div>
                <strong>Exigences par pilier</strong>
                <small>0 exigence trait&eacute;e</small>
              </div>
              <div class="detail-action-buttons">
                <button class="btn btn-primary profile-save-btn" type="submit">
                  <i class="bi bi-check2-circle"></i>
                  Enregistrer
                </button>
                <button class="btn btn-success profile-save-btn" type="button">
                  <i class="bi bi-patch-check"></i>
                  Valider
                </button>
                <button class="btn btn-outline-primary profile-save-btn" type="button">
                  <i class="bi bi-file-earmark-text"></i>
                  Rapport
                </button>
              </div>
            </div>
          </div>
          <div class="pillar-requirement-list">
            <div class="pillar-list">
              <div class="pillar-row">
                <div class="pillar-head">
                  <span><i class="bi bi-chevron-right text-primary me-1"></i> P01 &mdash; Coordination</span>
                </div>
                <div class="requirement-card-list">
                  <div class="requirement-item">
                    <div class="requirement-head">
                      <div>
                        <small>E01</small>
                        <strong>Plan de coordination disponible</strong>
                      </div>
                      <div class="response-toggle btn-group" role="group" aria-label="Reponse E01">
                        <input type="radio" class="btn-check" name="respE01" id="respE01_oui" value="oui" autocomplete="off">
                        <label class="btn btn-outline-success" for="respE01_oui">OUI</label>
                        <input type="radio" class="btn-check" name="respE01" id="respE01_non" value="non" autocomplete="off">
                        <label class="btn btn-outline-danger" for="respE01_non">NON</label>
                        <input type="radio" class="btn-check" name="respE01" id="respE01_na" value="na" autocomplete="off">
                        <label class="btn btn-outline-secondary" for="respE01_na">N/A</label>
                      </div>
                    </div>
                    <div class="requirement-fields">
                      <div>
                        <label class="form-label" for="preuveE01">Preuve / r&eacute;f&eacute;rence</label>
                        <input class="form-control" id="preuveE01" type="text">
                      </div>
                      <div>
                        <label class="form-label" for="commentairesE01">Commentaires</label>
                        <input class="form-control" id="commentairesE01" type="text">
                      </div>
                      <div>
                        <label class="form-label" for="lacunesE01">Lacunes</label>
                        <input class="form-control" id="lacunesE01" type="text">
                      </div>
                      <div>
                        <label class="form-label" for="actionsE01">Points d&rsquo;action</label>
                        <input class="form-control" id="actionsE01" type="text">
                      </div>
                      <div>
                        <label class="form-label" for="responsablesE01">Responsables</label>
                        <input class="form-control" id="responsablesE01" type="text">
                      </div>
                      <div>
                        <label class="form-label" for="delaiE01">D&eacute;lai</label>
                        <input class="form-control" id="delaiE01" type="date">
                      </div>
                      <div>
                        <label class="form-label" for="ressourcesE01">Ressources</label>
                        <input class="form-control" id="ressourcesE01" type="text">
                      </div>
                      <div>
                        <label class="form-label" for="partenairesE01">Partenaires</label>
                        <input class="form-control" id="partenairesE01" type="text">
                      </div>
                      <div>
                        <label class="form-label" for="observationE01">Observation</label>
                        <input class="form-control" id="observationE01" type="text">
                      </div>
                    </div>
                  </div>
                  <div class="requirement-item">
                    <div class="requirement-head">
                      <div>
                        <small>E02</small>
                        <strong>R&eacute;unions de coordination r&eacute;guli&egrave;res</strong>
                      </div>
                      <div class="response-toggle btn-group" role="group" aria-label="Reponse E02">
                        <input type="radio" class="btn-check" name="respE02" id="respE02_oui" value="oui" autocomplete="off">
                        <label class="btn btn-outline-success" for="respE02_oui">OUI</label>
                        <input type="radio" class="btn-check" name="respE02" id="respE02_non" value="non" autocomplete="off">
                        <label class="btn btn-outline-danger" for="respE02_non">NON</label>
                        <input type="radio" class="btn-check" name="respE02" id="respE02_na" value="na" autocomplete="off">
                        <label class="btn btn-outline-secondary" for="respE02_na">N/A</label>
                      </div>
                    </div>
                    <div class="requirement-fields">
                      <div>
                        <label class="form-label" for="preuveE02">Preuve / r&eacute;f&eacute;rence</label>
                        <input class="form-control" id="preuveE02" type="text">
                      </div>
                      <div>
                        <label class="form-label" for="commentairesE02">Commentaires</label>
                        <input class="form-control" id="commentairesE02" type="text">
                      </div>
                      <div>
                        <label class="form-label" for="lacunesE02">Lacunes</label>
                        <input class="form-control" id="lacunesE02" type="text">
                      </div>
                      <div>
                        <label class="form-label" for="actionsE02">Points d&rsquo;action</label>
                        <input class="form-control" id="actionsE02" type="text">
                      </div>
                      <div>
                        <label class="form-label" for="responsablesE02">Responsables</label>
                        <input class="form-control" id="responsablesE02" type="text">
                      </div>
                      <div>
                        <label class="form-label" for="delaiE02">D&eacute;lai</label>
                        <input class="form-control" id="delaiE02" type="date">
                      </div>
                      <div>
                        <label class="form-label" for="ressourcesE02">Ressources</label>
                        <input class="form-control" id="ressourcesE02" type="text">
                      </div>
                      <div>
                        <label class="form-label" for="partenairesE02">Partenaires</label>
                        <input class="form-control" id="partenairesE02" type="text">
                      </div>
                      <div>
                        <label class="form-label" for="observationE02">Observation</label>
                        <input class="form-control" id="observationE02" type="text">
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="pillar-list mt-3">
              <div class="pillar-row">
                <div class="pillar-head">
                  <span><i class="bi bi-chevron-right text-primary me-1"></i> P02 &mdash; Surveillance &eacute;pid&eacute;miologique</span>
                </div>
                <div class="requirement-card-list">
                  <div class="requirement-item">
                    <div class="requirement-head">
                      <div>
                        <small>E03</small>
                        <strong>Syst&egrave;me de notification fonctionnel</strong>
                      </div>
                      <div class="response-toggle btn-group" role="group" aria-label="Reponse E03">
                        <input type="radio" class="btn-check" name="respE03" id="respE03_oui" value="oui" autocomplete="off">
                        <label class="btn btn-outline-success" for="respE03_oui">OUI</label>
                        <input type="radio" class="btn-check" name="respE03" id="respE03_non" value="non" autocomplete="off">
                        <label class="btn btn-outline-danger" for="respE03_non">NON</label>
                        <input type="radio" class="btn-check" name="respE03" id="respE03_na" value="na" autocomplete="off">
                        <label class="btn btn-outline-secondary" for="respE03_na">N/A</label>
                      </div>
                    </div>
                    <div class="requirement-fields">
                      <div>
                        <label class="form-label" for="preuveE03">Preuve / r&eacute;f&eacute;rence</label>
                        <input class="form-control" id="preuveE03" type="text">
                      </div>
                      <div>
                        <label class="form-label" for="commentairesE03">Commentaires</label>
                        <input class="form-control" id="commentairesE03" type="text">
                      </div>
                      <div>
                        <label class="form-label" for="lacunesE03">Lacunes</label>
                        <input class="form-control" id="lacunesE03" type="text">
                      </div>
                      <div>
                        <label class="form-label" for="actionsE03">Points d&rsquo;action</label>
                        <input class="form-control" id="actionsE03" type="text">
                      </div>
                      <div>
                        <label class="form-label" for="responsablesE03">Responsables</label>
                        <input class="form-control" id="responsablesE03" type="text">
                      </div>
                      <div>
                        <label class="form-label" for="delaiE03">D&eacute;lai</label>
                        <input class="form-control" id="delaiE03" type="date">
                      </div>
                      <div>
                        <label class="form-label" for="ressourcesE03">Ressources</label>
                        <input class="form-control" id="ressourcesE03" type="text">
                      </div>
                      <div>
                        <label class="form-label" for="partenairesE03">Partenaires</label>
                        <input class="form-control" id="partenairesE03" type="text">
                      </div>
                      <div>
                        <label class="form-label" for="observationE03">Observation</label>
                        <input class="form-control" id="observationE03" type="text">
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="pillar-list mt-3">
              <div class="pillar-row">
                <div class="pillar-head">
                  <span><i class="bi bi-chevron-right text-primary me-1"></i> P03 &mdash; Equipe d&rsquo;intervention rapide</span>
                </div>
                <div class="requirement-card-list">
                  <div class="requirement-item">
                    <div class="requirement-head">
                      <div>
                        <small>E04</small>
                        <strong>EIR form&eacute;e et pr&eacute;positionn&eacute;e</strong>
                      </div>
                      <div class="response-toggle btn-group" role="group" aria-label="Reponse E04">
                        <input type="radio" class="btn-check" name="respE04" id="respE04_oui" value="oui" autocomplete="off">
                        <label class="btn btn-outline-success" for="respE04_oui">OUI</label>
                        <input type="radio" class="btn-check" name="respE04" id="respE04_non" value="non" autocomplete="off">
                        <label class="btn btn-outline-danger" for="respE04_non">NON</label>
                        <input type="radio" class="btn-check" name="respE04" id="respE04_na" value="na" autocomplete="off">
                        <label class="btn btn-outline-secondary" for="respE04_na">N/A</label>
                      </div>
                    </div>
                    <div class="requirement-fields">
                      <div>
                        <label class="form-label" for="preuveE04">Preuve / r&eacute;f&eacute;rence</label>
                        <input class="form-control" id="preuveE04" type="text">
                      </div>
                      <div>
                        <label class="form-label" for="commentairesE04">Commentaires</label>
                        <input class="form-control" id="commentairesE04" type="text">
                      </div>
                      <div>
                        <label class="form-label" for="lacunesE04">Lacunes</label>
                        <input class="form-control" id="lacunesE04" type="text">
                      </div>
                      <div>
                        <label class="form-label" for="actionsE04">Points d&rsquo;action</label>
                        <input class="form-control" id="actionsE04" type="text">
                      </div>
                      <div>
                        <label class="form-label" for="responsablesE04">Responsables</label>
                        <input class="form-control" id="responsablesE04" type="text">
                      </div>
                      <div>
                        <label class="form-label" for="delaiE04">D&eacute;lai</label>
                        <input class="form-control" id="delaiE04" type="date">
                      </div>
                      <div>
                        <label class="form-label" for="ressourcesE04">Ressources</label>
                        <input class="form-control" id="ressourcesE04" type="text">
                      </div>
                      <div>
                        <label class="form-label" for="partenairesE04">Partenaires</label>
                        <input class="form-control" id="partenairesE04" type="text">
                      </div>
                      <div>
                        <label class="form-label" for="observationE04">Observation</label>
                        <input class="form-control" id="observationE04" type="text">
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
      </div>
    </form>
  </div>
</main></template>