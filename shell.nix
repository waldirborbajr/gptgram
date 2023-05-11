let pkgs = import <nixpkgs> { config.allowUnfree = true; };
in
pkgs.mkShell {
  buildInputs = with pkgs; [
    nodejs-19_x
    nodePackages.typescript-language-server
    nodePackages_latest.pnpm
    nodePackages_latest.vue-cli
    yarn
    git
    zsh
    curl
  ];

  # avoid terminal issues
  TERM = "xterm";

  # default locale
  LANG = "en_US.UTF-8";
  LANGUAGE = "en_US.UTF-8";

  shellHook = ''
    export PATH="$PWD/node_modules/.bin/:$PATH"
    
    alias createvite='pnpm create vite@latest .'
    alias createvuetify='pnpm create vuetify .'
    alias installfont='pnpm i @fortawesome/fontawesome-free'
    alias installtail='pnpm i -D tailwindcss@latest postcss@latest autoprefixer@latest @tailwindcss/forms  && npx tailwindcss init -p'
    alias installvue='pnpm i &&  pnpm i vue-router@next vuex@latest && cp ../tailwind.config.js .'

    alias nr='pnpm run dev'
    alias ni='pnpm install'
    alias nl='pnpm run lint'

    alias l='ls -la'
    alias ll='ls -la'
    alias ys='yarn serve'
    alias yr='yarn dev'
    alias yb='yarn build'
    alias yp='yarn preview'

    echo "=> Installing ViteJS in here"
    pnpm i g vite@latest 

    echo ""
    echo "That's all folks."
    echo ""
    echo "To start a VueJS project type"
    echo ""
    echo "pnpm create vite@latest ."
  '';
}

