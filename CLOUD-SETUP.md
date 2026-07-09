# THOOVAM cloud and Android setup

1. Create a free project at Supabase.
2. Open **SQL Editor**, paste `supabase-setup.sql`, and run it once.
3. In **Authentication > Users**, create the email and password used by THOOVAM.
4. Open **Project Settings > API**. Put the Project URL and public anon key into `cloud-config.js`.
5. Upload every file in this folder to the GitHub repository. In **Settings > Pages**, publish the `main` branch.
6. Open the GitHub Pages website, press **Cloud: sign in**, and use the Supabase user.
7. On Android Chrome, open the website menu and choose **Add to Home screen** or **Install app**.

Use the same login on each device to access the same database. The app keeps a local offline copy and syncs changes when online.
