<script setup>
import Filtre from '../components/evaluations/Filtre.vue';

</script>

<template>
  <Filtre />
  <section class="card">
    <div class="card-body">
      <div class="evaluations-toolbar">
        <div class="section-title mb-0">
          <i class="bi bi-list-check"></i>
          <h3>Liste des evaluations</h3>
        </div>
        <div class="evaluations-search input-group">
          <span class="input-group-text"><i class="bi bi-search"></i></span>
          <input class="form-control" id="evaluationSearch" type="search" placeholder="Rechercher">
        </div>
      </div>
      <div class="table-responsive">
        <table class="table align-middle mb-0">
          <thead>
            <tr>
              <th>Niveau</th>
              <th>Province</th>
              <th>Menace</th>
              <th>Periode</th>
              <th>Entite</th>
              <th class="text-end">Participants</th>
              <th class="text-end">Score</th>
              <th class="text-end">Details</th>
            </tr>
          </thead>
          <tbody>
              <tr class="evaluation-row">
                <td>Zone de sante</td>
                <td>Tshopo</td>
                <td>Inondation</td>
                <td>juil. 2026</td>
                <td>Port Boyoma</td>
                <td class="text-end">11</td>
                <td class="text-end"><span class="score-badge status-good">75%</span></td>
                <td class="text-end">
                  <button class="btn btn-sm btn-light table-action details-btn" type="button" data-bs-toggle="modal" data-bs-target="#evaluationDetailModal">
                    <i class="bi bi-eye"></i>
                  </button>
                </td>
              </tr>
              <tr class="evaluation-row">
                <td>Zone de sante</td>
                <td>Haut-Katanga</td>
                <td>Risque technologique</td>
                <td>juil. 2026</td>
                <td>Lubumbashi</td>
                <td class="text-end">10</td>
                <td class="text-end"><span class="score-badge status-mid">60%</span></td>
                <td class="text-end">
                  <button class="btn btn-sm btn-light table-action details-btn" type="button" data-bs-toggle="modal" data-bs-target="#evaluationDetailModal">
                    <i class="bi bi-eye"></i>
                  </button>
                </td>
              </tr>
              <tr class="evaluation-row">
                <td>Point d'entr&eacute;e</td>
                <td>Sud-Kivu</td>
                <td>Conflits arm&eacute;s</td>
                <td>juin 2026</td>
                <td>Poste frontalier Uvira</td>
                <td class="text-end">8</td>
                <td class="text-end"><span class="score-badge status-low">57%</span></td>
                <td class="text-end">
                  <button class="btn btn-sm btn-light table-action details-btn" type="button" data-bs-toggle="modal" data-bs-target="#evaluationDetailModal">
                    <i class="bi bi-eye"></i>
                  </button>
                </td>
              </tr>
              <tr class="evaluation-row">
                <td>Zone de sante</td>
                <td>Kinshasa</td>
                <td>Chol&eacute;ra</td>
                <td>juin 2026</td>
                <td>Limete</td>
                <td class="text-end">15</td>
                <td class="text-end"><span class="score-badge status-good">76%</span></td>
                <td class="text-end">
                  <button class="btn btn-sm btn-light table-action details-btn" type="button" data-bs-toggle="modal" data-bs-target="#evaluationDetailModal">
                    <i class="bi bi-eye"></i>
                  </button>
                </td>
              </tr>
              <tr class="evaluation-row">
                <td>Zone de sante</td>
                <td>Nord-Kivu</td>
                <td>MVE Ebola</td>
                <td>mai 2026</td>
                <td>Beni</td>
                <td class="text-end">21</td>
                <td class="text-end"><span class="score-badge status-good">77%</span></td>
                <td class="text-end">
                  <button class="btn btn-sm btn-light table-action details-btn" type="button" data-bs-toggle="modal" data-bs-target="#evaluationDetailModal">
                    <i class="bi bi-eye"></i>
                  </button>
                </td>
              </tr>
              <tr class="evaluation-row">
                <td>Zone de sante</td>
                <td>Ituri</td>
                <td>MVE Ebola</td>
                <td>mai 2026</td>
                <td>Bunia</td>
                <td class="text-end">14</td>
                <td class="text-end"><span class="score-badge status-mid">67%</span></td>
                <td class="text-end">
                  <button class="btn btn-sm btn-light table-action details-btn" type="button" data-bs-toggle="modal" data-bs-target="#evaluationDetailModal">
                    <i class="bi bi-eye"></i>
                  </button>
                </td>
              </tr>
              <tr class="evaluation-row">
                <td>Province</td>
                <td>Equateur</td>
                <td>Inondation</td>
                <td>avr. 2026</td>
                <td>DPS Equateur</td>
                <td class="text-end">9</td>
                <td class="text-end"><span class="score-badge status-mid">58%</span></td>
                <td class="text-end">
                  <button class="btn btn-sm btn-light table-action details-btn" type="button" data-bs-toggle="modal" data-bs-target="#evaluationDetailModal">
                    <i class="bi bi-eye"></i>
                  </button>
                </td>
              </tr>
              <tr class="evaluation-row">
                <td>Point d'entr&eacute;e</td>
                <td>Kongo Central</td>
                <td>Chol&eacute;ra</td>
                <td>mar. 2026</td>
                <td>Port de Matadi</td>
                <td class="text-end">12</td>
                <td class="text-end"><span class="score-badge status-mid">64%</span></td>
                <td class="text-end">
                  <button class="btn btn-sm btn-light table-action details-btn" type="button" data-bs-toggle="modal" data-bs-target="#evaluationDetailModal">
                    <i class="bi bi-eye"></i>
                  </button>
                </td>
              </tr>
              <tr class="evaluation-row">
                <td>Point d'entr&eacute;e</td>
                <td>Kinshasa</td>
                <td>MVE Ebola</td>
                <td>f&eacute;v. 2026</td>
                <td>Aeroport N'djili</td>
                <td class="text-end">18</td>
                <td class="text-end"><span class="score-badge status-mid">74%</span></td>
                <td class="text-end">
                  <button class="btn btn-sm btn-light table-action details-btn" type="button" data-bs-toggle="modal" data-bs-target="#evaluationDetailModal">
                    <i class="bi bi-eye"></i>
                  </button>
                </td>
              </tr>
          </tbody>
        </table>
      </div>
    </div>
  </section>
  
</template>