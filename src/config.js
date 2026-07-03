// Override at build time with VITE_API_BASE_URL if the proxy moves to a different deployment.
export const API_BASE_URL = import.meta.env.VITE_API_BASE_URL || "https://cto-dog-training.vercel.app";
