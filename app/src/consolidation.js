const latestEvaluationKey = evaluation => [
  evaluation.axe,
  evaluation.menace_id,
  evaluation.niveau,
  evaluation.province,
  evaluation.entite
].map(value => String(value ?? '')).join('|')

export const latestValidEvaluations = evaluations => {
  const latest = new Map()

  evaluations
    .filter(evaluation => evaluation.etat === 'Valide' && evaluation.deleted !== true)
    .forEach(evaluation => {
      const key = latestEvaluationKey(evaluation)
      const current = latest.get(key)
      const updateAt = String(evaluation.update_at ?? '')

      if (!current || updateAt > String(current.update_at ?? '')) {
        latest.set(key, evaluation)
      }
    })

  return [...latest.values()]
}