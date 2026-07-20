# THOOVAM update

## Step 1 — Login and cloud reliability
- Supabase configuration now loads from one file: `cloud-config.js`.
- Login sessions persist securely in browser local storage and refresh automatically.
- Network requests time out with useful error messages instead of only “Failed to fetch”.
- Added offline mode so the app remains usable during a cloud outage.
- Service worker cache upgraded and no longer caches Supabase configuration.
- Cloud sign-out clears the saved session correctly.

## Step 2 — Billing safety improvements
- Business data is saved locally on every change and later synced to Supabase.
- Invoice saving validates customer, invoice number, and line items.
- Duplicate invoice numbers update the matching invoice instead of silently duplicating it.
- Invalid empty invoice lines are removed before saving.

Run `supabase-setup.sql` once in the Supabase SQL Editor, create an Authentication user, then deploy all files together.
