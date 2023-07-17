{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    nativeBuildInputs = with pkgs.buildPackages; [ 
      arduino-cli
    ];

    shellHook = ''
      export ARDUINO_BOARD_MANAGER_ADDITIONAL_URLS=https://adafruit.github.io/arduino-board-index/package_adafruit_index.json
      arduino-cli core update-index
      arduino-cli core install adafruit:avr
      arduino-cli core install arduino:avr
      arduino-cli lib install keyboard
    '';
  }
