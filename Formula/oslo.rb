# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Oslo < Formula
  desc "Command line tool for working with OpenSLO"
  homepage "https://github.com/OpenSLO/oslo"
  version "0.5.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OpenSLO/oslo/releases/download/v0.5.1/oslo_Darwin_arm64.tar.gz"
      sha256 "2263ab82b5891fcefffa6727e8b7f13cae12164f99e5dd414c9adc09c97c2463"

      def install
        bin.install "bin/oslo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/OpenSLO/oslo/releases/download/v0.5.1/oslo_Darwin_x86_64.tar.gz"
      sha256 "aa9eb88292e6d605f8c23b0be3ad86e54565473f2b255d53ec4875a1178e278e"

      def install
        bin.install "bin/oslo"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/OpenSLO/oslo/releases/download/v0.5.1/oslo_Linux_x86_64.tar.gz"
      sha256 "68475e21d95ba7f66b195821f3a0c07ac7797f0208cef36d80c7ac71a75b1b91"

      def install
        bin.install "bin/oslo"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/OpenSLO/oslo/releases/download/v0.5.1/oslo_Linux_arm64.tar.gz"
      sha256 "3bf272d280bcf911d702cf48bd0550115edf07f8c58e24e528278cfc46e346f6"

      def install
        bin.install "bin/oslo"
      end
    end
  end
end
