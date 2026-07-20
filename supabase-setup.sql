create table if not exists public.thoovam_business_data (
  user_id uuid primary key references auth.users(id) on delete cascade,
  data jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);

alter table public.thoovam_business_data enable row level security;

drop policy if exists "Users can read their THOOVAM data" on public.thoovam_business_data;
drop policy if exists "Users can insert their THOOVAM data" on public.thoovam_business_data;
drop policy if exists "Users can update their THOOVAM data" on public.thoovam_business_data;
drop policy if exists "Users can delete their THOOVAM data" on public.thoovam_business_data;

create policy "Users can read their THOOVAM data"
on public.thoovam_business_data for select to authenticated
using (auth.uid() = user_id);

create policy "Users can insert their THOOVAM data"
on public.thoovam_business_data for insert to authenticated
with check (auth.uid() = user_id);

create policy "Users can update their THOOVAM data"
on public.thoovam_business_data for update to authenticated
using (auth.uid() = user_id)
with check (auth.uid() = user_id);

create policy "Users can delete their THOOVAM data"
on public.thoovam_business_data for delete to authenticated
using (auth.uid() = user_id);

create or replace function public.set_thoovam_updated_at()
returns trigger language plpgsql as $$
begin
  new.updated_at = now();
  return new;
end;
$$;

drop trigger if exists set_thoovam_updated_at on public.thoovam_business_data;
create trigger set_thoovam_updated_at
before update on public.thoovam_business_data
for each row execute function public.set_thoovam_updated_at();
