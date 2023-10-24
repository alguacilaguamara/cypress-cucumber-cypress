FROM fedora:39

# Installing all the dependencies for Cypress and cypress-cucumber-preprocessor
RUN dnf update -y && dnf install -y \
    nodejs \
    npm \
    xorg-x11-server-Xvfb \
    util-linux nss atk at-spi2-atk cups-libs gtk3 \
    google-chrome-stable \
    && dnf clean all

RUN npm install -g npm@10.2.0 cypress @badeball/cypress-cucumber-preprocessor

CMD ["cypress"]
