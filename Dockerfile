FROM archlinux/base

RUN \
  pacman -Sy; \
  pacman -S git texlive-most texlive-lang biber pandoc base-devel fontconfig xorg-mkfontdir ttf-fira-code --noconfirm; \
  curl https://raw.githubusercontent.com/JulietaUla/Montserrat/v7.200/fonts/ttf/Montserrat-Regular.ttf --create-dirs --output "/usr/share/fonts/TTF/Montserrat-Regular.ttf"; \
  curl https://raw.githubusercontent.com/JulietaUla/Montserrat/v7.200/fonts/ttf/Montserrat-Italic.ttf --create-dirs --output "/usr/share/fonts/TTF/Montserrat-Italic.ttf"; \
  curl https://raw.githubusercontent.com/JulietaUla/Montserrat/v7.200/fonts/ttf/Montserrat-Bold.ttf --create-dirs --output "/usr/share/fonts/TTF/Montserrat-Bold.ttf"; \
  curl https://raw.githubusercontent.com/JulietaUla/Montserrat/v7.200/fonts/ttf/Montserrat-BoldItalic.ttf --create-dirs --output "/usr/share/fonts/TTF/Montserrat-BoldItalic.ttf"; \
  curl https://raw.githubusercontent.com/JulietaUla/Montserrat/v7.200/fonts/ttf/Montserrat-ExtraBold.ttf --create-dirs --output "/usr/share/fonts/TTF/Montserrat-ExtraBold.ttf"; \
  curl https://raw.githubusercontent.com/JulietaUla/Montserrat/v7.200/fonts/ttf/Montserrat-ExtraBoldItalic.ttf --create-dirs --output "/usr/share/fonts/TTF/Montserrat-ExtraBoldItalic.ttf"; \
  cd /usr/share/fonts/TTF/; \
  mkfontscale; mkfontdir; fc-cache -f .; \
  pacman -Scc --noconfirm

ENV PATH="/usr/bin/vendor_perl:${PATH}"
