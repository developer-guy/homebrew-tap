# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class DockerCredentialMagic < Formula
  desc "A magic shim for Docker credential helpers 🪄"
  homepage "https://github.com/docker-credential-magic/docker-credential-magic"
  version "0.9.0"
  license "Apache License"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/developer-guy/docker-credential-magic/releases/download/v0.9.0/docker-credential-magic_Darwin_arm64.tar.gz"
      sha256 "072a4739eb0d9a2185fc6081fbddb3ad92e9d52c5982014fe71c5c971223b79d"

      def install
        bin.install "docker-credential-magic"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/developer-guy/docker-credential-magic/releases/download/v0.9.0/docker-credential-magic_Darwin_x86_64.tar.gz"
      sha256 "7e0e2e4a99e83c2b801833afc5dfed340466a6dfd090b41efe1ec06b7ebea5d3"

      def install
        bin.install "docker-credential-magic"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/developer-guy/docker-credential-magic/releases/download/v0.9.0/docker-credential-magic_Linux_armv6.tar.gz"
      sha256 "18fd725611d92d3438e8c2718af630ba6a843e5489dd79b6de75d16e14840431"

      def install
        bin.install "docker-credential-magic"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/developer-guy/docker-credential-magic/releases/download/v0.9.0/docker-credential-magic_Linux_arm64.tar.gz"
      sha256 "9c5050815ecd39963691664f0c14b4bddde0d3f9166b1a9262e278190fb49650"

      def install
        bin.install "docker-credential-magic"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/developer-guy/docker-credential-magic/releases/download/v0.9.0/docker-credential-magic_Linux_x86_64.tar.gz"
      sha256 "3d36a53e1eed8ecf4af83f9b5aae44d56d2a043f6469f212f7d1ac74f755695e"

      def install
        bin.install "docker-credential-magic"
      end
    end
  end

  depends_on "go" => :optional
  depends_on "git"

  test do
    system "#{bin}/docker-credential-magic version"
  end
end
