const { createClient } = require('@supabase/supabase-js');
const supabase = createClient(
  'https://ftctmseyrqhckutpfdeq.supabase.co',
  'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ0Y3Rtc2V5cnFoY2t1dHBmZGVxIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc2OTE2MDQ5MCwiZXhwIjoyMDg0NzM2NDkwfQ.Ju0N09SJdyygmgq7xjry7v-eCLjUryqhwtPKsslwHAI'
);

async function check() {
  const { data, error } = await supabase.from('adventure_knowledge').select('id').limit(1);
  console.log('Error:', error);
  console.log('Data:', data);
}
check();
