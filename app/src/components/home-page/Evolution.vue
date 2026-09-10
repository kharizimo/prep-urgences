<template><article class="card">
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
</article></template>