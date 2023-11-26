import { defineConfig } from "vitepress";
import { getJobItems, getDocsItems } from "./util.mts";

// https://vitepress.dev/reference/site-config
export default defineConfig({
  title: "Roy's Nomad Docs",
  description: "A collection of notes and resources about HashiCorp Nomad",
  themeConfig: {
    search: {
      provider: "local",
    },
    // https://vitepress.dev/reference/default-theme-config
    nav: [
      { text: "Home", link: "/" },
      { text: "Jobs", link: "/jobs/" },
      { text: "Examples", link: "/markdown-examples" },
    ],

    sidebar: [
      {
        text: "Docs",
        items: getDocsItems(),
      },
      {
        text: "Jobs",
        items: getJobItems(),
      },
      {
        text: "Examples",
        items: [
          { text: "Markdown Examples", link: "/markdown-examples" },
          { text: "Runtime API Examples", link: "/api-examples" },
        ],
      },
    ],

    socialLinks: [
      { icon: "github", link: "https://github.com/r-portas/nomad-examples" },
    ],
  },
});
