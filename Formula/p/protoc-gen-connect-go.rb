class ProtocGenConnectGo < Formula
  desc "The Go implementation of Connect: Protobuf RPC that works."
  homepage "https://connectrpc.com"
  url "https://github.com/connectrpc/connect-go/archive/refs/tags/v1.16.2.tar.gz"
  sha256 "ad0623ef0d20681fd63eaf284ae96e02b6635b6d76f22974f2d84d7ddba810cc"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/protoc-gen-connect-go"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test protoc-gen-connect-go`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system bin/"program", "do", "something"`.
    system "false"
  end
end
