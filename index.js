#!/usr/bin/env node

console.log("⚙️  Alazab FrappeJS CLI running...");

const { execSync } = require("child_process");

try {
  execSync("bench version", { stdio: "inherit" });
} catch (err) {
  console.error("❌ Bench not installed or not working properly.");
  process.exit(1);
}
