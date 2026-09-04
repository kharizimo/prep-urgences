<template>
    <section class="row g-3 mb-4">
          <div class="col-12 col-lg-5">
            <article class="card h-100">
              <div class="card-body">
                <div class="section-title">
                  <i class="bi bi-virus2"></i>
                  <h3>M&eacute;ny&ygrave;ces &eacute;pid&eacute;miques</h3>
                </div>
                <div class="threat-list" id="threatList" aria-label="Liste des menaces &eacute;pid&eacute;miques">
                  <button class="threat-item" type="button">
                    <span>
                      <strong>MVE Ebola</strong>
                      <small>3 evaluations</small>
                    </span>
                    <span class="score-badge status-mid">74%</span>
                  </button>
                  <button class="threat-item" type="button">
                    <span>
                      <strong>Chol&eacute;ra</strong>
                      <small>2 evaluations</small>
                    </span>
                    <span class="score-badge status-mid">67%</span>
                  </button>
                  <button class="threat-item" type="button">
                    <span>
                      <strong>Inondation</strong>
                      <small>2 evaluations</small>
                    </span>
                    <span class="score-badge status-low">58%</span>
                  </button>
                  <button class="threat-item" type="button">
                    <span>
                      <strong>Conflits arm&eacute;s</strong>
                      <small>1 evaluation</small>
                    </span>
                    <span class="score-badge status-low">57%</span>
                  </button>
                  <button class="threat-item" type="button">
                    <span>
                      <strong>Risque technologique</strong>
                      <small>1 evaluation</small>
                    </span>
                    <span class="score-badge status-mid">60%</span>
                  </button>
                </div>
              </div>
            </article>
          </div>

          <div class="col-12 col-lg-7">
            <div class="row g-3 h-100">
              <div class="col-12">
                <div class="province-filter">
                  <label for="provinceFilter">Province</label>
                  <select class="form-select" id="provinceFilter" aria-label="Filtrer par province">
                    <option value="">Toutes les provinces</option>
                    <option value="Kinshasa">Kinshasa</option>
                    <option value="Kongo Central">Kongo Central</option>
                    <option value="Equateur">Equateur</option>
                    <option value="Nord-Kivu">Nord-Kivu</option>
                    <option value="Sud-Kivu">Sud-Kivu</option>
                    <option value="Haut-Katanga">Haut-Katanga</option>
                    <option value="Ituri">Ituri</option>
                    <option value="Tshopo">Tshopo</option>
                  </select>
                </div>
              </div>
              <div class="col-6 col-md-3">
                <article class="card metric-card">
                  <i class="bi bi-map text-primary"></i>
                  <span>58%</span>
                  <small>Evaluations</small>
                </article>
              </div>
              <div class="col-6 col-md-3">
                <article class="card metric-card">
                  <i class="bi bi-hospital text-success"></i>
                  <span>70%</span>
                  <small>Alerte rouge</small>
                </article>
              </div>
              <div class="col-6 col-md-3">
                <article class="card metric-card">
                  <i class="bi bi-signpost-split text-warning"></i>
                  <span>68%</span>
                  <small>Suivi rapproch&eacute;</small>
                </article>
              </div>
              <div class="col-6 col-md-3">
                <article class="card metric-card">
                  <i class="bi bi-building-check text-info"></i>
                  <span>0%</span>
                  <small>Conforme</small>
                </article>
              </div>
              <div class="col-12">
                <article class="card score-card">
                  <div class="card-body">
                    <div class="d-flex align-items-start justify-content-between mb-3">
                      <div>
                        <p class="text-secondary small mb-1">Niveau de pr&eacute;paration</p>
                        <h2 class="h5 mb-0">Global</h2>
                      </div>
                      <span class="status-chip status-mid">Partiel</span>
                    </div>
                    <div class="score-layout">
                      <div class="score-ring" style="--score:68; --score-color:#ed8f03;" aria-label="Score principal">
                        <span>68%</span>
                      </div>
                      <div class="score-copy">
                        <p class="mb-2">Synth&egrave;se nationale de toutes les &eacute;valuations de pr&eacute;paration, tous niveaux et menaces confondus.</p>
                        <div class="mini-grid">
                          <div>
                            <span>9</span>
                            <small>DPS</small>
                          </div>
                          <div>
                            <span>5</span>
                            <small>Zones de sant&eacute;</small>
                          </div>
                          <div>
                            <span>9</span>
                            <small>Points d'entr&eacute;e</small>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </article>
              </div>
              <div class="col-12">
                <article class="card">
                  <div class="card-body">
                    <div class="section-title">
                      <i class="bi bi-activity"></i>
                      <h3>&Eacute;volution du score dans le temps</h3>
                    </div>
                    <div class="trend-chart" id="trendChart">
                      <svg class="trend-svg" viewBox="0 0 720 170" role="img" aria-label="Evolution du score">
                        <line class="trend-axis" x1="28" y1="142" x2="692" y2="142"></line>
                        <line class="trend-axis" x1="28" y1="28" x2="28" y2="142"></line>
                        <polyline class="trend-line" points="28,58 111,69 194,76 277,54 360,66 443,55 526,77 609,74 692,57"></polyline>
                        <g>
                          <circle class="trend-dot" cx="28" cy="58" r="5"></circle>
                          <text x="28" y="46" text-anchor="middle" font-size="12" font-weight="700">74%</text>
                          <text x="28" y="162" text-anchor="middle" font-size="12" fill="#667085">fev.</text>
                        </g>
                        <g>
                          <circle class="trend-dot" cx="111" cy="69" r="5"></circle>
                          <text x="111" y="57" text-anchor="middle" font-size="12" font-weight="700">64%</text>
                          <text x="111" y="162" text-anchor="middle" font-size="12" fill="#667085">mar.</text>
                        </g>
                        <g>
                          <circle class="trend-dot" cx="194" cy="76" r="5"></circle>
                          <text x="194" y="64" text-anchor="middle" font-size="12" font-weight="700">58%</text>
                          <text x="194" y="162" text-anchor="middle" font-size="12" fill="#667085">avr.</text>
                        </g>
                        <g>
                          <circle class="trend-dot" cx="277" cy="54" r="5"></circle>
                          <text x="277" y="42" text-anchor="middle" font-size="12" font-weight="700">77%</text>
                          <text x="277" y="162" text-anchor="middle" font-size="12" fill="#667085">mai</text>
                        </g>
                        <g>
                          <circle class="trend-dot" cx="360" cy="66" r="5"></circle>
                          <text x="360" y="54" text-anchor="middle" font-size="12" font-weight="700">67%</text>
                          <text x="360" y="162" text-anchor="middle" font-size="12" fill="#667085">mai</text>
                        </g>
                        <g>
                          <circle class="trend-dot" cx="443" cy="55" r="5"></circle>
                          <text x="443" y="43" text-anchor="middle" font-size="12" font-weight="700">76%</text>
                          <text x="443" y="162" text-anchor="middle" font-size="12" fill="#667085">jun.</text>
                        </g>
                        <g>
                          <circle class="trend-dot" cx="526" cy="77" r="5"></circle>
                          <text x="526" y="65" text-anchor="middle" font-size="12" font-weight="700">57%</text>
                          <text x="526" y="162" text-anchor="middle" font-size="12" fill="#667085">jun.</text>
                        </g>
                        <g>
                          <circle class="trend-dot" cx="609" cy="74" r="5"></circle>
                          <text x="609" y="62" text-anchor="middle" font-size="12" font-weight="700">60%</text>
                          <text x="609" y="162" text-anchor="middle" font-size="12" fill="#667085">jul.</text>
                        </g>
                        <g>
                          <circle class="trend-dot" cx="692" cy="57" r="5"></circle>
                          <text x="692" y="45" text-anchor="middle" font-size="12" font-weight="700">75%</text>
                          <text x="692" y="162" text-anchor="middle" font-size="12" fill="#667085">jul.</text>
                        </g>
                      </svg>
                    </div>
                  </div>
                </article>
              </div>
            </div>
          </div>
        </section>

        <section class="row g-3 mb-4">
          <div class="col-12 col-lg-6">
            <article class="card h-100">
              <div class="card-body">
                <div class="section-title">
                  <i class="bi bi-columns-gap"></i>
                  <h3>Scores globaux par pilier</h3>
                </div>
                <div class="pillar-list" id="pillarScores">
                  <div class="pillar-row">
                    <div class="pillar-head">
                      <span>Coordination</span>
                      <strong>69%</strong>
                    </div>
                    <div class="progress" role="progressbar" aria-valuenow="69" aria-valuemin="0" aria-valuemax="100">
                      <div class="progress-bar bg-warning" style="width: 69%"></div>
                    </div>
                  </div>
                  <div class="pillar-row">
                    <div class="pillar-head">
                      <span>Surveillance &eacute;pid&eacute;miologique</span>
                      <strong>68%</strong>
                    </div>
                    <div class="progress" role="progressbar" aria-valuenow="68" aria-valuemin="0" aria-valuemax="100">
                      <div class="progress-bar bg-warning" style="width: 68%"></div>
                    </div>
                  </div>
                  <div class="pillar-row">
                    <div class="pillar-head">
                      <span>EIR</span>
                      <strong>69%</strong>
                    </div>
                    <div class="progress" role="progressbar" aria-valuenow="69" aria-valuemin="0" aria-valuemax="100">
                      <div class="progress-bar bg-warning" style="width: 69%"></div>
                    </div>
                  </div>
                  <div class="pillar-row">
                    <div class="pillar-head">
                      <span>Laboratoire</span>
                      <strong>69%</strong>
                    </div>
                    <div class="progress" role="progressbar" aria-valuenow="69" aria-valuemin="0" aria-valuemax="100">
                      <div class="progress-bar bg-warning" style="width: 69%"></div>
                    </div>
                  </div>
                  <div class="pillar-row">
                    <div class="pillar-head">
                      <span>Prise en charge</span>
                      <strong>74%</strong>
                    </div>
                    <div class="progress" role="progressbar" aria-valuenow="74" aria-valuemin="0" aria-valuemax="100">
                      <div class="progress-bar bg-warning" style="width: 74%"></div>
                    </div>
                  </div>
                  <div class="pillar-row">
                    <div class="pillar-head">
                      <span>PCI et WASH</span>
                      <strong>71%</strong>
                    </div>
                    <div class="progress" role="progressbar" aria-valuenow="71" aria-valuemin="0" aria-valuemax="100">
                      <div class="progress-bar bg-warning" style="width: 71%"></div>
                    </div>
                  </div>
                  <div class="pillar-row">
                    <div class="pillar-head">
                      <span>Logistique</span>
                      <strong>66%</strong>
                    </div>
                    <div class="progress" role="progressbar" aria-valuenow="66" aria-valuemin="0" aria-valuemax="100">
                      <div class="progress-bar bg-warning" style="width: 66%"></div>
                    </div>
                  </div>
                  <div class="pillar-row">
                    <div class="pillar-head">
                      <span>Budget</span>
                      <strong>53%</strong>
                    </div>
                    <div class="progress" role="progressbar" aria-valuenow="53" aria-valuemin="0" aria-valuemax="100">
                      <div class="progress-bar bg-danger" style="width: 53%"></div>
                    </div>
                  </div>
                </div>
              </div>
            </article>
          </div>
          <div class="col-12 col-lg-6">
            <article class="card h-100">
              <div class="card-body">
                <div class="section-title location-title">
                  <span>
                    <i class="bi bi-geo-alt"></i>
                    <h3>Scores d&eacute;taill&eacute;s des lieux</h3>
                  </span>
                  <div class="location-toggle btn-group btn-group-sm" role="group" aria-label="Filtrer les lieux">
                    <input type="radio" class="btn-check" name="locationType" id="location-provinces" value="Province" checked>
                    <label class="btn btn-outline-primary" for="location-provinces">Provinces</label>
                    <input type="radio" class="btn-check" name="locationType" id="location-zones" value="Zone de sante">
                    <label class="btn btn-outline-primary" for="location-zones">Zones de sant&eacute;</label>
                    <input type="radio" class="btn-check" name="locationType" id="location-entry" value="Point d'entree">
                    <label class="btn btn-outline-primary" for="location-entry">Point d'entr&eacute;e</label>
                  </div>
                </div>
                <div class="table-responsive">
                  <table class="table align-middle mb-0">
                    <thead>
                      <tr>
                        <th>Lieu</th>
                        <th>Type</th>
                        <th class="text-end">Score</th>
                      </tr>
                    </thead>
                    <tbody id="locationScores">
                      <tr>
                        <td>
                          <strong>Equateur</strong>
                          <span class="d-block text-secondary small">DPS Equateur</span>
                        </td>
                        <td>Province</td>
                        <td class="text-end"><span class="score-badge status-low">58%</span></td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </article>
          </div>
        </section>

        <section class="row g-3" id="evaluationsPage">
          <div class="col-12 col-xl-8">
            <article class="card">
              <div class="card-body">
                <div class="section-title evaluation-title">
                  <span>
                    <i class="bi bi-clipboard2-check"></i>
                    <h3>Evaluations</h3>
                  </span>
                  <small id="evaluationScopeLabel">Axe Global</small>
                </div>
                <div class="table-responsive">
                  <table class="table align-middle mb-0">
                    <thead>
                      <tr>
                        <th>Province</th>
                        <th>Menace</th>
                        <th>P&eacute;riode</th>
                        <th>Institution</th>
                        <th class="text-end">Participants</th>
                        <th class="text-end">Score</th>
                        <th class="text-end">D&eacute;tails</th>
                      </tr>
                    </thead>
                    <tbody id="recentEvaluations">
                      <tr class="evaluation-row" tabindex="0">
                        <td><strong>Tshopo</strong></td>
                        <td>Inondation</td>
                        <td>jul. 2026</td>
                        <td>Port Boyoma</td>
                        <td class="text-end">11</td>
                        <td class="text-end"><span class="score-badge status-good">75%</span></td>
                        <td class="text-end">
                          <button class="btn btn-sm btn-light details-btn" type="button" aria-label="Voir les details">
                            <i class="bi bi-eye"></i>
                          </button>
                        </td>
                      </tr>
                      <tr class="evaluation-row" tabindex="0">
                        <td><strong>Haut-Katanga</strong></td>
                        <td>Risque technologique</td>
                        <td>jul. 2026</td>
                        <td>Lubumbashi</td>
                        <td class="text-end">10</td>
                        <td class="text-end"><span class="score-badge status-mid">60%</span></td>
                        <td class="text-end">
                          <button class="btn btn-sm btn-light details-btn" type="button" aria-label="Voir les details">
                            <i class="bi bi-eye"></i>
                          </button>
                        </td>
                      </tr>
                      <tr class="evaluation-row" tabindex="0">
                        <td><strong>Sud-Kivu</strong></td>
                        <td>Conflits arm&eacute;s</td>
                        <td>jun. 2026</td>
                        <td>Poste frontalier Uvira</td>
                        <td class="text-end">8</td>
                        <td class="text-end"><span class="score-badge status-low">57%</span></td>
                        <td class="text-end">
                          <button class="btn btn-sm btn-light details-btn" type="button" aria-label="Voir les details">
                            <i class="bi bi-eye"></i>
                          </button>
                        </td>
                      </tr>
                      <tr class="evaluation-row" tabindex="0">
                        <td><strong>Kinshasa</strong></td>
                        <td>Chol&eacute;ra</td>
                        <td>jun. 2026</td>
                        <td>Limete</td>
                        <td class="text-end">15</td>
                        <td class="text-end"><span class="score-badge status-good">76%</span></td>
                        <td class="text-end">
                          <button class="btn btn-sm btn-light details-btn" type="button" aria-label="Voir les details">
                            <i class="bi bi-eye"></i>
                          </button>
                        </td>
                      </tr>
                      <tr class="evaluation-row" tabindex="0">
                        <td><strong>Nord-Kivu</strong></td>
                        <td>MVE Ebola</td>
                        <td>mai 2026</td>
                        <td>Beni</td>
                        <td class="text-end">21</td>
                        <td class="text-end"><span class="score-badge status-good">77%</span></td>
                        <td class="text-end">
                          <button class="btn btn-sm btn-light details-btn" type="button" aria-label="Voir les details">
                            <i class="bi bi-eye"></i>
                          </button>
                        </td>
                      </tr>
                      <tr class="evaluation-row" tabindex="0">
                        <td><strong>Ituri</strong></td>
                        <td>MVE Ebola</td>
                        <td>mai 2026</td>
                        <td>Bunia</td>
                        <td class="text-end">14</td>
                        <td class="text-end"><span class="score-badge status-mid">67%</span></td>
                        <td class="text-end">
                          <button class="btn btn-sm btn-light details-btn" type="button" aria-label="Voir les details">
                            <i class="bi bi-eye"></i>
                          </button>
                        </td>
                      </tr>
                      <tr class="evaluation-row" tabindex="0">
                        <td><strong>Equateur</strong></td>
                        <td>Inondation</td>
                        <td>avr. 2026</td>
                        <td>DPS Equateur</td>
                        <td class="text-end">9</td>
                        <td class="text-end"><span class="score-badge status-low">58%</span></td>
                        <td class="text-end">
                          <button class="btn btn-sm btn-light details-btn" type="button" aria-label="Voir les details">
                            <i class="bi bi-eye"></i>
                          </button>
                        </td>
                      </tr>
                      <tr class="evaluation-row" tabindex="0">
                        <td><strong>Kongo Central</strong></td>
                        <td>Chol&eacute;ra</td>
                        <td>mar. 2026</td>
                        <td>Port de Matadi</td>
                        <td class="text-end">12</td>
                        <td class="text-end"><span class="score-badge status-mid">64%</span></td>
                        <td class="text-end">
                          <button class="btn btn-sm btn-light details-btn" type="button" aria-label="Voir les details">
                            <i class="bi bi-eye"></i>
                          </button>
                        </td>
                      </tr>
                      <tr class="evaluation-row" tabindex="0">
                        <td><strong>Kinshasa</strong></td>
                        <td>MVE Ebola</td>
                        <td>f&eacute;v. 2026</td>
                        <td>A&eacute;roport N'djili</td>
                        <td class="text-end">18</td>
                        <td class="text-end"><span class="score-badge status-mid">74%</span></td>
                        <td class="text-end">
                          <button class="btn btn-sm btn-light details-btn" type="button" aria-label="Voir les details">
                            <i class="bi bi-eye"></i>
                          </button>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </article>
          </div>
          <div class="col-12 col-xl-4">
            <article class="card">
              <div class="card-body">
                <div class="section-title">
                  <i class="bi bi-diagram-3"></i>
                  <h3>Entit&eacute;s suivies</h3>
                </div>
                <div class="entity-grid" id="entityGrid">
                  <div class="entity-card">
                    <strong>3</strong>
                    <small>Axes</small>
                  </div>
                  <div class="entity-card">
                    <strong>5</strong>
                    <small>Menaces</small>
                  </div>
                  <div class="entity-card">
                    <strong>8</strong>
                    <small>Piliers</small>
                  </div>
                  <div class="entity-card">
                    <strong>9</strong>
                    <small>Exigences</small>
                  </div>
                  <div class="entity-card">
                    <strong>9</strong>
                    <small>Evaluations</small>
                  </div>
                  <div class="entity-card">
                    <strong>36</strong>
                    <small>EvaluationItems</small>
                  </div>
                </div>
              </div>
            </article>
          </div>
        </section>
</template>