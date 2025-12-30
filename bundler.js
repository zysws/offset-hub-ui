import fs from "fs";
import path from "path";

const SRC_DIR = "./src";
const OUT_FILE = "./dist/bundle.lua";

const modules = {};

function walk(dir) {
    for (const file of fs.readdirSync(dir)) {
        const full = path.join(dir, file);

        if (fs.statSync(full).isDirectory()) {
            walk(full);
        } else if (file.endsWith(".lua")) {
            const rel = path
                .relative(SRC_DIR, full)
                .replace(/\\/g, "/")
                .replace(".lua", "")
                .replace(/\//g, ".");

            modules[rel] = fs.readFileSync(full, "utf8");
        }
    }
}

walk(SRC_DIR);

let output = `
local __modules = {}
local __cache = {}

local function __require(name)
    if __cache[name] then
        return __cache[name]
    end

    local fn = __modules[name]
    if not fn then
        error("Module not found: " .. name, 2)
    end

    local result = fn()
    __cache[name] = result
    return result
end
`;

for (const [name, code] of Object.entries(modules)) {
    output += `
__modules["${name}"] = function()
${code}
end
`;
}

output += `
return __require("register")
`;

fs.mkdirSync("./dist", { recursive: true });
fs.writeFileSync(OUT_FILE, output);

console.log("Bundled to", OUT_FILE);
