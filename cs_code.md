- setting
-

"editor.defaultFormatter": "esbenp.prettier-vscode",
  "python.formatting.provider": "yapf",
  "[python]": {
    "editor.defaultFormatter":"ms-toolsai.jupyter",
    "editor.tabSize": 2,
    "editor.detectIndentation": false,
    "editor.formatOnSaveMode": "file",       
    "editor.formatOnPaste": false
  },
  "python.formatting.yapfArgs": ["--style", "{based_on_style: chromium, indent_width: 20}"],
  "python.linting.pylintArgs": ["--reports", "12", "--disable", "I0011"],

  "python.linting.pylintEnabled": true 
