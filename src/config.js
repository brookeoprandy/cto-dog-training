// Set VITE_API_BASE_URL at build time once the proxy is deployed to Vercel,
// e.g. `VITE_API_BASE_URL=https://your-app.vercel.app npm run build`.
export const API_BASE_URL = import.meta.env.VITE_API_BASE_URL || "";
