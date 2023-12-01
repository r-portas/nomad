import { readdirSync, lstatSync } from "fs";
import { join } from "path";
import capitalize from "lodash.capitalize";

/**
 * Gets a list of subdirectories in the given path
 *
 * @param path - The path to look for subdirectories in
 * @returns - A list of subdirectories in the given path
 */
function getSubdirectories(path: string): string[] {
  return readdirSync(path).filter((file) =>
    lstatSync(join(path, file)).isDirectory()
  );
}

export function getJobItems(): { text: string; link: string }[] {
  return getSubdirectories("jobs").map((job) => ({
    text: job,
    link: `/jobs/${job}/`,
  }));
}

export function getDocsItems(): { text: string; link: string }[] {
  return readdirSync("docs")
    .filter((file) => file.endsWith(".md"))
    .map((file) => ({
      text: capitalize(file.replace(".md", "")),
      link: `/docs/${file}`,
    }));
}
