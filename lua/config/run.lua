local wk = require("which-key")

local run_commands = {
  java =
  [[sh -c 'BIN=$( [ -d bin ] && echo bin || echo ../bin ); mkdir -p "$BIN"; javac -d "$BIN" Main.java && java -cp "$BIN" Main']],
  c =
  [[sh -c 'BIN=$( [ -d bin ] && echo bin || echo ../bin ); mkdir -p "$BIN"; gcc -O2 -o "$BIN/main" main.c && "$BIN/main"']],
  rust = "cargo run",
  python = "python3 %",
}

wk.add({
  {
    "<leader>R",
    function()
      local cmd = run_commands[vim.bo.filetype]
      if not cmd then
        print("No run command set for filetype: " .. vim.bo.filetype)
        return
      end
      local dir = vim.fn.expand("%:p:h")
      vim.cmd("split")
      vim.cmd("lcd " .. vim.fn.fnameescape(dir))
      vim.cmd("terminal " .. cmd)
    end,
    desc = "Run project",
    mode = "n",
    icon = { icon = "", color = "green" },
  },
})
