# THOOVAM complete run guide

1. Open Supabase and run `supabase-setup.sql` in SQL Editor.
2. In Authentication → Users, create the owner email/password and confirm the user.
3. In `cloud-config.js`, keep only the Supabase Project URL and publishable/anon key. Never use a service-role key.
4. Upload every file to the root of the GitHub repository and enable GitHub Pages from the main branch/root folder.
5. Open the GitHub Pages URL, clear old site data once, then sign in.
6. Test in this order: Settings → customer → product → purchase → sales invoice → payment → reports → backup → sign out/sign in.

## Included in this package

- Supabase authentication, session refresh, cloud sync and offline mode
- Sales invoices with edit, print, duplicate-number protection and GST totals
- Purchases, stock, expenses, customers, vendors and payments
- GST CSV export and live business report CSV export
- Local JSON backup and restore
- Dynamic Profit & Loss, receivable, payable and cash-position reports
- PWA service worker with cloud configuration excluded from cache
- Idempotent RLS database setup

## Important limitation

This is a small-business single-owner PWA. Before using it for statutory filing, have an accountant verify GST classifications, invoice requirements, opening balances and report calculations for your business.
