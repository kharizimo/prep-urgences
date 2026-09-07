<template><aside class="evaluation-detail-sidebar">
  <section class="card">
    <div class="card-body">
      <div class="section-title">
        <i class="bi bi-speedometer2"></i>
        <h3>Niveau de preparation</h3>
      </div>
      <div class="readiness-panel">
        <strong>74%</strong>
        <span class="score-badge status-mid">Partiel</span>
        <div class="progress" role="progressbar" aria-valuenow="74" aria-valuemin="0" aria-valuemax="100" aria-label="Niveau de preparation">
          <div class="progress-bar bg-warning" style="width: 74%"></div>
        </div>
        <div class="critical-comment-box">Niveau de preparation partiel. Les lacunes prioritaires doivent etre document&eacute;es et suivies.</div>
      </div>
    </div>
  </section>
  <section class="card">
    <div class="card-body">
      <div class="section-title">
        <i class="bi bi-info-circle"></i>
        <h3>M&eacute;ta donn&eacute;es</h3>
      </div>
      <div class="metadata-list">
        <div class="metadata-item">
          <small>Axe d&rsquo;&eacute;valuation</small>
          <strong>Global</strong>
        </div>
        <div class="metadata-item">
          <small>Menace</small>
          <strong>MVE Ebola</strong>
        </div>
        <div class="metadata-item">
          <small>Province</small>
          <strong>Kinshasa</strong>
        </div>
        <div class="metadata-item">
          <small>Niveau</small>
          <strong>Point d&rsquo;entr&eacute;e</strong>
        </div>
        <div class="metadata-item">
          <small>Entit&eacute;</small>
          <strong>Aeroport N&rsquo;djili</strong>
        </div>
      </div>
      <div class="metadata-edit-grid mt-3">
        <div>
          <label class="form-label" for="detailPeriod">P&eacute;riode</label>
          <input class="form-control" id="detailPeriod" type="month" value="2026-02">
        </div>
        <div>
          <label class="form-label" for="detailParticipants">Participants</label>
          <input class="form-control" id="detailParticipants" type="number" min="1" step="1" value="18">
        </div>
        <div>
          <label class="form-label" for="detailComments">Commentaires</label>
          <textarea class="form-control" id="detailComments" rows="4"></textarea>
        </div>
      </div>
    </div>
  </section>
</aside></template>