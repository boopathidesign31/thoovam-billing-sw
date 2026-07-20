# THOOVAM Billing & Accounts

A browser-based PWA for sales invoices, purchases, inventory, expenses, customers, vendors, payments, GST summaries and business reports. Data is saved locally first and can sync to one private Supabase record per authenticated user.

## First-time setup

1. Create or open a Supabase project.
2. Run `supabase-setup.sql` in **SQL Editor**. The script is safe to run again.
3. In **Authentication → Users**, create the owner login and confirm the email.
4. In `cloud-config.js`, set the project URL and the public publishable/anon key. Never use the service-role key.
5. Deploy all files to GitHub Pages or another HTTPS static host.
6. Open `index.html`, sign in, and save a small test invoice.

## Run locally

Opening the file directly works for basic offline use, but PWA/service-worker features require a local web server:

```bash
python -m http.server 8080
```

Then open `http://localhost:8080`.

## Included modules

- Persistent Supabase authentication with refresh and sign-out
- Offline mode and local-first autosave
- Sales invoice entry, edit, reprint and payment tracking
- Purchases and vendor balances
- Inventory and stock editing
- Expenses with GST
- Customer and vendor management
- Payment receipts/payments
- GST and business dashboard summaries
- Search, print and PWA installation
- Row Level Security so users can access only their own data

## Important release check

After every deployment, clear any old installed PWA cache once: browser DevTools → Application → Service Workers → Unregister, then reload. Future releases use the updated service worker automatically.
