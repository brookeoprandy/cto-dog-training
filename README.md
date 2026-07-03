# CTO Dog Training

A React app scaffolded with Vite.

## Setup

```bash
npm install
npm run dev
```

Then open the URL Vite prints (usually http://localhost:5173).

## Build for production

```bash
npm run build
npm run preview
```

## Structure

- `src/App.jsx` — the main app component
- `src/main.jsx` — React entry point that mounts `App`
- `index.html` — Vite entry HTML
- `api/generate-summary.js` — Vercel serverless function that proxies AI summary requests to Anthropic (keeps the API key server-side)
- `ios/` — Capacitor-generated native iOS project

## AI summary backend

The AI summary feature calls `/api/generate-summary` instead of the Anthropic API directly, so the API key never ships in the app. This is deployed at https://cto-dog-training.vercel.app (Git-connected to this repo — pushes to `main` auto-deploy). The `ANTHROPIC_API_KEY` environment variable is set in the Vercel project's Settings → Environment Variables.

`src/config.js` defaults `API_BASE_URL` to that deployment. Override it at build time with `VITE_API_BASE_URL` if the proxy ever moves.

## iOS / TestFlight

This is wrapped with [Capacitor](https://capacitorjs.com) so it can run as a native iOS app.

```bash
npm run ios:sync   # vite build + capacitor sync
npm run ios:open   # opens ios/App/App.xcodeproj in Xcode
```

In Xcode: select the `App` target → Signing & Capabilities → choose your Apple Developer team → Product → Archive → Distribute App → App Store Connect. Then add testers in App Store Connect → TestFlight.
