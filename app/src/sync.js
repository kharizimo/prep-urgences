export const syncNow = () => new Date().toISOString()

export const nextSyncStatus = current => {
  if (current === 'pending_insert' || current === 'pending_update') return current
  return 'pending_update'
}