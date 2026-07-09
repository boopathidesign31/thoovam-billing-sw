create table if not exists public.thoovam_business_data (
  user_id uuid primary key references auth.users(id) on delete cascade,
  data jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);

alter table public.thoovam_business_data enable row level security;

create policy "Users can read their THOOVAM data"
on public.thoovam_business_data for select
to authenticated
using (auth.uid() = user_id);

create policy "Users can insert their THOOVAM data"
on public.thoovam_business_data for insert
to authenticated
with check (auth.uid() = user_id);

create policy "Users can update their THOOVAM data"
on public.thoovam_business_data for update
to authenticated
using (auth.uid() = user_id)
with check (auth.uid() = user_id);
