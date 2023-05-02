let 
  pkgs = import <nixpkgs> {
    config.allowUnfree = true;
  };
in
pkgs.mkShell {
  buildInputs = with pkgs; [
    nodejs-18_x
    nodePackages.typescript-language-server
    yarn
    helix
    git
    zsh
  ];

    # avoid terminal issues
    TERM="xterm";

    # default locale
    LANG="en_US.UTF-8";
    LANGUAGE="en_US.UTF-8";

  shellHook = ''
    export PATH="$PWD/node_modules/.bin/:$PATH"
    
    alias nr='npm run dev'
    alias ni='npm install'
    alias nl='npm run lint'

    alias create='npm create vite@latest .'
    alias itail='npm i && npm i -D tailwind postcss autoprefixer @tailwindcss/forms && npx tailwindcss init -p && npm i vue-router@next vuex@latest && cp ../tailwind.config.js .'

    alias l='ls -la'
    alias ll='ls -la'
    alias ys='yarn serve'
    alias yr='yarn dev'
    alias yb='yarn build'
    alias yp='yarn preview'

    echo "=> Installing VueJS in here"
    npm cache clean -f
    yarn global add @vue/cli

    echo ""
    echo "That's all folks."
    echo ""
    echo "To start a VueJS project type"
    echo ""
    echo "yarn init vue@latest"
    echo "or"
    echo "npm create vite@latest ."
  '';
}

